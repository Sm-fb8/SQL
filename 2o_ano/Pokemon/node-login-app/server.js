const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const bcrypt = require('bcrypt');
 
const app = express();
 
// Configuração do body-parser
app.use(bodyParser.urlencoded({ extended: false }));
 
// Configurações da conexão com o banco de dados (substitua de acordo com o seu ambiente)
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'minas',
    database: 'apiPokemon'
});
 
// Função para conectar ao banco de dados
function connectToDatabase() {
    connection.connect((err) => {
        if (err) {
            console.error('Erro ao conectar ao banco de dados:', err);
        } else {
            console.log('Conectado ao banco de dados MySQL!');
        }
    });
}
 
// Tente conectar ao banco de dados na inicialização do servidor
connectToDatabase();
 
app.get('/login', (req, res) => {
    res.sendFile(__dirname + '/views/login.html');
});
 
app.post('/login', async (req, res) => {
    const { usuario, senha } = req.body;
 
    const query = 'SELECT * FROM usuarios WHERE usuario = ?';
    const values = [usuario];
 
    try {
        const [resultado] = await connection.promise().query(query, values);
 
        if (resultado.length === 0) {
            res.status(401).send('Usuário ou senha inválidos.');
            return;
        }
 
        const senhaInvalida = await bcrypt.compare(senha, result[0].senha);
 
        if (!senhaInvalida) {
            res.status(401).send('Usuário ou senha inválidos.');
            return;
        }
 
        res.send('Login realizado com sucesso!');
    } catch (error) {
        console.error('Erro ao realizar login:', error);
        res.status(500).send('Erro interno do servidor.');
    }
});
 
app.get('/pagina_restrita', (req, res) => {
    res.sendFile(__dirname + '/views/pagina_restrita.html');
});
 
// Iniciar o servidor na porta 3000
app.listen(3000, () => {
    console.log('Servidor rodando na porta 3000.');
});
 
app.get('/cadastrar', (req, res) => {
    res.sendFile(__dirname + '/views/cadastrar_usuario.html');
});
 
app.post('/cadastrar-usuario', async (req, res) => {
    const { usuario, email, senha } = req.body;
 
    const salt = await bcrypt.genSalt(10);
    const senhahashed = await bcrypt.hash(senha, salt);
 
    const query = 'INSERT INTO usuarios (usuario, email, senha) VALUES (?, ?, ?)';
    const values = [usuario, email, senhahashed];
 
    try {
        await connection.promise().query(query, values);
 
        res.status(201).send('Usuário cadastrado com sucesso!');
    } catch (error) {
        console.error('Erro ao cadastrar usuário:', error);
        res.status(500).send('Erro interno do servidor.');
    }
});
