import 'package:flutter/material.dart';
import 'form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Person_form()));
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Row(children: [
            Text("Person", style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.yellow, fontSize: 20),),
            Text(" Form", style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.green, fontSize: 20),),
          ],),
        ),
      ),
    );
  }
}