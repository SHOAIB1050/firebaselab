import 'package:firebaselab/services/database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Person_form extends StatefulWidget {
  const Person_form({super.key});

  @override
  State<Person_form> createState() => _Person_formState();
}

class _Person_formState extends State<Person_form> {
  TextEditingController NameTextEditingController = new TextEditingController();
  TextEditingController AgeTextEditingController = new TextEditingController();
  TextEditingController LocTextEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.purple,
          title: const Row(children: [
            Text("My", style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.yellow, fontSize: 20),),
            Text(" Form", style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.green, fontSize: 20),),
          ],),
        ),
        body:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name", style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.black, fontSize: 20),),
            SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: NameTextEditingController,
                style: const TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black
              ),),
            ),
            SizedBox(height: 5,),
            Text("Age", style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.black, fontSize: 20),),
            SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: AgeTextEditingController,
                style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black
              ),),
            ),
            SizedBox(height: 5,),
            Text("Location", style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.black, fontSize: 20),),
            SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                controller: LocTextEditingController,
                style: TextStyle(
                  fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black
              ),),
            ),
            SizedBox(height: 5,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink
                ),
                onPressed: ()async{
                  String ID=randomAlphaNumeric(4);
                  Map <String, dynamic> PersonRecord = {
                    "Name" : NameTextEditingController.text,
                    "Age" : AgeTextEditingController.text,
                    "Loc" : LocTextEditingController.text,
                    "id" : ID,
                  };
                   await Database().addRecord(PersonRecord, ID);
                   Fluttertoast.showToast(msg: "Record Added");
                   
                
              }, child: const Text("Add Record", style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.black, fontSize: 20),),),
            ),
          ],
        ),
      ),
    );
  }
}