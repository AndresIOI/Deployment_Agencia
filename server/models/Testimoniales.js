const Sequelize = require('sequelize');
const db = require('../config/database');

const Testimoniales = db.define('testimonial', {
    nombre: {
        type: Sequelize.STRING
    },
    email: {
        type: Sequelize.STRING
    },
    mensaje: {
        type: Sequelize.TEXT('long')
    },
},{
    tableName: "testimoniales"
});

module.exports = Testimoniales;