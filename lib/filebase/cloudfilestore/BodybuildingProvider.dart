import 'package:cloud_firestore/cloud_firestore.dart';
class BodybuildingProvider {

  Future<QuerySnapshot> getAllBodybuildingPosture() async {
    QuerySnapshot  querySnapshot = await Firestore.instance
        .collection('bodybuilding-posture').getDocuments();
    return querySnapshot;
  }

  Future<QuerySnapshot> getAllBodybuildingListPosture(String id) async {
    QuerySnapshot  querySnapshot = await Firestore.instance
        .collection('exercise-posture').where("type",isEqualTo: id).getDocuments();
    return querySnapshot;
  }
}