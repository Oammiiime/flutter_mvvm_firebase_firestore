import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/filebase/cloudfilestore/BodybuildingProvider.dart';

class BodybuildingDetailRepo{

  BodybuildingDetailRepo(this.bodybuilding);

  BodybuildingProvider bodybuilding ;
  Future<QuerySnapshot> getAllBodybuildingListPosture(String id) => bodybuilding.getAllBodybuildingListPosture(id);
}