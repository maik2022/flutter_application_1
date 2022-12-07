import 'package:flutter/material.dart';
import 'package:flutter_application_1/Servicio/FirebaseServicio.dart';

class like extends StatefulWidget {
  const like({super.key});

  @override
  State<like> createState() => _LikeState();
}

class _LikeState extends State<like> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Libros Disponibles', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
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
                      child: Image.network(snapshot.data?[index]['imagen'])
                    ),
                    Text(snapshot.data?[index]['nombre'], style: const TextStyle(fontSize: 20.0)),
                    Row(
                      children: const [
                        Icon(Icons.thumb_up)
                      ],
                    )
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
      ),
    );
  }
}  