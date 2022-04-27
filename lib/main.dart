import 'dart:convert';
import 'dart:async' show Future;
import 'package:api/ventana2.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List personas = [];
  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('load_json/estudiante.json');
    setState(() => personas = json.decode(jsonText));
    return 'success';
  }

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 181, 52, 43),
            centerTitle: true,
            title: const Text(
              'Primera API',
              style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          body: ListView.builder(
            // ignore: unnecessary_null_comparison
            itemCount: personas == null ? 0 : personas.length,
            itemBuilder: (BuildContext context, int index) {
              var nombre = personas[index]['nombre'];
              var telefono = personas[index]['telefono'];
              var matricula = personas[index]['matricula'];
              var carrera = personas[index]['carrera'];
              var semestre = personas[index]['semestre'];
              var email = personas[index]['email'];
              return ListTile(
                onLongPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Ventana2(
                            matricula: matricula,
                            nombre: nombre,
                            carrera: carrera,
                            semestre: semestre,
                            telefono: telefono,
                            email: email),
                      ));
                },
                title: Text(nombre),
                subtitle: Text(telefono),
                leading: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 174, 48, 39),
                  child: Icon(Icons.account_box_rounded),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              );
            },
          )),
    );
  }
}
