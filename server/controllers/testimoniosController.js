const Testimonial = require("../models/Testimoniales");

exports.mostrarTestimoniales = async (req, res) => {
  const testimoniales = await Testimonial.findAll();

  res.render("testimoniales", {
    pagina: "Testimoniales",
    testimoniales,
  });
};

exports.crearTestimonial = async (req, res) => {
  let { nombre, email, mensaje } = req.body;

  let errores = [];
  if (!nombre) {
    errores.push({ mensaje: "Agrega tu nombre" });
  }
  if (!email) {
    errores.push({ mensaje: "Agrega tu correo electronico" });
  }
  if (!mensaje) {
    errores.push({ mensaje: "Agrega tu mensaje" });
  }

  if (errores.length > 0) {
    const testimoniales = await Testimonial.findAll();

    res.render("testimoniales", {
      pagina: "Testimoniales",
      testimoniales,
      errores,
      nombre,
      email,
      mensaje,
    });
  } else {
    await Testimonial.create({
      nombre,
      email,
      mensaje,
    });

    res.redirect("/testimonios");
  }
};
