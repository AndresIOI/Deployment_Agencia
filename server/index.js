// Imporar Express
const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const routes = require('./routes');
const configs = require('./config');
require('dotenv').config({path: 'variables.env'});


// Configurar Express
const app = express();

// Establecer template engine 
app.set('view engine', 'pug');

// Establecer ruta de las vistas
app.set('views', path.join(__dirname, './views'));

// Cargar carpeta de contenido estaico (public)
app.use(express.static(path.join(__dirname,'../public')));

app.locals.titulo = configs[app.get('env')].nombresitio;

// Crear variables "globales"
app.use( (req,res, next) => {
    const fecha = new Date();
    res.locals.anioActual = fecha.getFullYear();
    const ruta = req.path;
    res.locals.ruta = ruta;
    return next();
});

app.use(bodyParser.urlencoded({extends: true}));

app.use('/', routes());

const host = process.env.HOST || '0.0.0.0';
const port = process.env.PORT || 3000;

app.listen(port, host);