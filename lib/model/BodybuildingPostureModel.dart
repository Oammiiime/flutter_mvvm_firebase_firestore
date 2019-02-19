import 'package:cloud_firestore/cloud_firestore.dart';

class BodybuildingPostureModel {
  final String id;
  final String image;
  final String name;
  final DocumentReference reference;

  BodybuildingPostureModel.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['id'] != null),
        assert(map['image'] != null),
        assert(map['name'] != null),
        name = map['name'],
        id = map['id'],
        image = map['image'];

  BodybuildingPostureModel.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$name>";
}
