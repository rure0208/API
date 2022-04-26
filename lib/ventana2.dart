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
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYi6963hlTgJQaYjul4Tx50goY0v7wnfD_ag&usqp=CAU"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 350),
            child: RichText(
              text: TextSpan(
                text: 'Bienvenidoa ',
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
                children: <TextSpan>[
                  TextSpan(
                      text: nombre,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const TextSpan(text: ', con matricula:  '),
                  TextSpan(
                      text: matricula,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const TextSpan(
                      text: ',  te encuentras cursando la carrera de:  '),
                  TextSpan(
                      text: carrera,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const TextSpan(text: ', en el semetre de:  '),
                  TextSpan(
                      text: semestre,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const TextSpan(text: ',  cuyos datos de contacto son:  '),
                  TextSpan(
                      text: "$telefono,",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " $email",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
