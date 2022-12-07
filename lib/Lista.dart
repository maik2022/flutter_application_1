import 'package:flutter/material.dart';

// Import servicio
import 'package:flutter_application_1/Servicio/FirebaseServicio.dart';

class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listar Libro', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 133, 10, 1),
      ),
      
      body:
      FutureBuilder( 
        future: getLibro(), 
        builder: ((context, snapshot) {  
          if(snapshot.hasData){ 
            return ListView.builder( 
              itemCount: snapshot.data?.length,  
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(15.0),
                  color: const Color.fromARGB(255, 203, 207, 208),
                  child: Column(
                    
                  children: [
                    Container(
                      height: 200.0,
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.black,
                      child: Image.network(snapshot.data?[index]['imagen']),
                    ),
                    Text(snapshot.data?[index]['nombre'], style: const TextStyle(fontSize: 20.0)),
                    Text(snapshot.data?[index]['nomAutor'], style: const TextStyle(fontSize: 20.0)),
                    Text(snapshot.data?[index]['apeAutor'], style: const TextStyle(fontSize: 20.0)),
                    const Text("Publicacion:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    Text(snapshot.data?[index]['fecha'], style: const TextStyle(fontSize: 20.0)),
                    const Text('Me gustas', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
                    Text(snapshot.data?[index]['like'], style: const TextStyle(fontSize: 20.0)),
                  ],
                  ),
                );
              },
            );
          }else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        })
      ,)
    );
  }
}
