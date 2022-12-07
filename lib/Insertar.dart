import 'package:flutter/material.dart';
import 'package:flutter_application_1/Servicio/FirebaseServicio.dart';

class Insertar extends StatefulWidget {
  const Insertar({super.key});
  @override
  State<Insertar> createState() => _InsertarState();
}

class _InsertarState extends State<Insertar> {

  TextEditingController nombreControl = TextEditingController(text: ""); 
  TextEditingController nomAutor = TextEditingController(text: "");  
  TextEditingController apeAutor = TextEditingController(text: ""); 
  TextEditingController fecha = TextEditingController(text: ""); 
  TextEditingController img = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro Libro', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 133, 10, 1),
      ),
      body:Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30.0),
              height: 300,
              child: Image.asset('insertar.jpg'),
            ),
            TextField(
              controller: nombreControl, 
              decoration: const InputDecoration(
                hintText: 'Nombre Libro',
                
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextField(
                controller: nomAutor,

                decoration: const InputDecoration(
                  hintText: 'Nombre Autor',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextField(
                controller: apeAutor,

                decoration: const InputDecoration(
                  hintText: 'Apellido Autor',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextField(
                controller: fecha,

                decoration: const InputDecoration(
                  hintText: 'Fecha Publicacion',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextField(
                controller: img,

                decoration: const InputDecoration(
                  hintText: 'Link de la portada',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            ElevatedButton(onPressed: () async{
          
              await addLibro(nombreControl.text, nomAutor.text, fecha.text, apeAutor.text, img.text, "0").then((_) {  
                Navigator.pop(context);
              });  
            },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 133, 10, 1),
              ),
              child: const Text("REGISTRAR", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}