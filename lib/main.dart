import 'package:api/ventana2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Estudiante> _personas = [
    Estudiante("17760210", "Efrain", "sistemas", "9no", "6462113536",
        "er388928@gmail.com"),
    Estudiante("17760220", "Ruiz", "sistemas", "9no", "6462113536",
        "er388928@gmail.com"),
    Estudiante("17760230", "Rodriguez", "sistemas", "9no", "6462113536",
        "er388928@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Primera API',
            ),
          ),
          body: ListView.builder(
            itemCount: _personas.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onLongPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Ventana2(
                            matricula: _personas[index].matricula,
                            nombre: _personas[index].nombre,
                            carrera: _personas[index].carrera,
                            semestre: _personas[index].semestre,
                            telefono: _personas[index].telefono,
                            email: _personas[index].email),
                      ));
                },
                title: Text(
                    _personas[index].matricula + ' ' + _personas[index].nombre),
                subtitle: Text(_personas[index].telefono),
                leading: CircleAvatar(
                  child: Text(_personas[index].nombre.substring(0, 1)),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              );
            },
          )),
    );
  }

  /*_borrarPersona(context, Estudiante persona) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text("Eliminar contacto"),
              content: const Text("seguro"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancelar")),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _personas.remove(persona);
                      });

                      Navigator.pop(context);
                    },
                    child: const Text("Borrar",
                        style: TextStyle(color: Colors.red)))
              ],
            ));
  }*/
}

class Estudiante {
  String matricula;
  String nombre;
  String carrera;
  String semestre;
  String telefono;
  String email;

  Estudiante(this.matricula, this.nombre, this.carrera, this.semestre,
      this.telefono, this.email);
}
