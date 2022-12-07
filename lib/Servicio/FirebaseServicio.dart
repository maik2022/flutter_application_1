// Servicios de firestore 

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore BaseD = FirebaseFirestore.instance;  // Base de datos

// Funcion Listar Libros.

Future<List> getLibro() async { 
  List libro = [];
  CollectionReference ColeccionLibro = BaseD.collection('Libro'); 

  QuerySnapshot queryLibro = await ColeccionLibro.get();  

  queryLibro.docs.forEach((documento) {
    libro.add(documento.data()); 
  });

  return libro;
} 

// Funcion para Registrar Libro. 

Future<void> addLibro(String nombre, String nAutor, String fecha, String aAutor, String img, String like) async {
  await BaseD.collection('Libro').add({"nombre": nombre, "nomAutor": nAutor, "fecha": fecha, "apeAutor": aAutor, "imagen": img, "like": like}); 
}
