import 'package:cloud_firestore/cloud_firestore.dart';

class Poli {
  String? id;
  String? nm_poli;

  Poli({this.id, this.nm_poli});

  Map <String, dynamic> toMap(){
    return {
      'id': id,
      'nm_poli': nm_poli,
    };
  }

  Poli.fromDocumentSnapshot(DocumentSnapshot<Map <String, dynamic>> doc):
  id = doc.id,
  nm_poli = doc.data()!['nm_poli'];
}
