import 'package:flutter/material.dart';
import 'package:flutter_application_1/Insertar.dart';
import 'package:flutter_application_1/like.dart';
import 'package:flutter_application_1/lista.dart';

// Import Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Libreria',
      theme: ThemeData(
      
      ),
      home: const PageInicio(),
    );
  }
}

class PageInicio extends StatelessWidget {
  const PageInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Libreria Nacional', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 133, 10, 1),
      ),
      body:ListView(
        
        children: [
          Container(
            width: 2000,
            child: Image.asset('assets/inicio.jpg', repeat: ImageRepeat.repeat,),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 100,
            color: const Color.fromARGB(255, 203, 207, 208),
            child: 
              IconButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Lista()));
                },
                icon: const Icon(
                  Icons.list, size: 60.0, color:Colors.redAccent,
                ),
              ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 100,
            color: const Color.fromARGB(255, 203, 207, 208),
            child: 
              IconButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const Insertar()));
                },
                icon: const Icon(
                  Icons.create, size: 50.0, color:Colors.redAccent,
                ),
              ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            height: 100,
            color: const Color.fromARGB(255, 203, 207, 208),
            child: 
              IconButton(
                onPressed: () 
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const like()));
                },
                icon: const Icon(
                  Icons.thumb_up, size: 50.0, color:Colors.redAccent,
                ),
              ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            color: const Color.fromARGB(255, 133, 10, 1),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: const[
                Text('© 2022', style: TextStyle(color: Colors.white, fontSize: 15.0)),
                Text('Privacidad', style: TextStyle(color: Colors.white, decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 15.0)),
                Text('Terminos', style: TextStyle(color: Colors.white, decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 15.0)),
                Text('Condiciones', style: TextStyle(color: Colors.white, decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 15.0)),
               
            ],)
            
          ),
        ],
      ),
      
    );
  }
}

