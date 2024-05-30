import 'package:cloud_firestore/cloud_firestore.dart';
class Database{
 
  Future addRecord(Map<String, dynamic> AddMap, String id )async{
  return await FirebaseFirestore.instance
      .collection("Person")
      .doc(id)
      .set(AddMap);
  }
}