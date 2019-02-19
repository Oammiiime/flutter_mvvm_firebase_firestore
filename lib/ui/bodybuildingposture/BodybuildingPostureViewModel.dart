import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/ui/bodybuildingposture/BodybuildingPostureRepo.dart';
import 'package:rxdart/rxdart.dart';

class BodybuildingPostureViewModel {

  BodybuildingPostureRepo _repository ;

  BodybuildingPostureViewModel(this._repository);

  final _bodybuildingPostureFetcher = PublishSubject<QuerySnapshot>();

  Observable<QuerySnapshot> get allBodybuildingPosture => _bodybuildingPostureFetcher.stream;

  getAllBodybuildingPosture() async {
    QuerySnapshot itemModel = await _repository.getAllBodybuildingPosture();
    _bodybuildingPostureFetcher.sink.add(itemModel);
  }

  dispose() {
    _bodybuildingPostureFetcher.close();
  }
}


