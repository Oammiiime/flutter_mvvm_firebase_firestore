import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/model/BodybuildingPostureModel.dart';
import 'package:fitness/filebase/cloudfilestore/BodybuildingProvider.dart';

class BodybuildingPostureRepo{

  BodybuildingPostureRepo(this.bodybuildingProvider);

  BodybuildingProvider bodybuildingProvider ;
  Future<QuerySnapshot> getAllBodybuildingPosture() => bodybuildingProvider.getAllBodybuildingPosture();
}