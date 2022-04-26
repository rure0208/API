import 'package:flutter/material.dart';

class Ventana2 extends StatelessWidget {
  final String matricula;
  final String nombre;
  final String carrera;
  final String semestre;
  final String telefono;
  final String email;
  const Ventana2({
    Key? key,
    required this.matricula,
    required this.nombre,
    required this.carrera,
    required this.semestre,
    required this.telefono,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/La_leyenda_negra_y_la_verdad_hist%C3%B3rica_1914.djvu/page1-1200px-La_leyenda_negra_y_la_verdad_hist%C3%B3rica_1914.djvu.jpg"),
            fit: BoxFit.cover),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 100),
          child: RichText(
            text: TextSpan(
              text: 'Bienvenido/a ',
              style:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              children: <TextSpan>[
                TextSpan(
                    text: nombre,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                const TextSpan(text: ', con matricula:  '),
                TextSpan(
                    text: matricula,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                const TextSpan(
                    text: ',  te encuentras cursando la carrera de:  '),
                TextSpan(
                    text: carrera,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                const TextSpan(text: ', en el semetre :  '),
                TextSpan(
                    text: semestre,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                const TextSpan(text: ',  cuyos Telefono es:  '),
                TextSpan(
                    text: "$telefono, ",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
                const TextSpan(text: 'Con direccion de correo:  '),
                TextSpan(
                    text: " $email",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            textAlign: TextAlign.left,
          )),
    );
  }
}
