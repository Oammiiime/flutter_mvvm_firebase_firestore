import 'package:cloud_firestore/cloud_firestore.dart';
class BodybuildingProvider {

  Future<QuerySnapshot> getAllBodybuildingPosture() async {
    QuerySnapshot  querySnapshot = await Firestore.instance
        .collection('bodybuilding-posture').getDocuments();
    return querySnapshot;
  }
}