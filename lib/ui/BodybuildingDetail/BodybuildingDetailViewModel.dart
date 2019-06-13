import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/ui/BodybuildingDetail/BodybuildingDetailRepo.dart';
import 'package:rxdart/rxdart.dart';

class BodybuildingDetailViewModel{
  BodybuildingDetailRepo _repository ;

  BodybuildingDetailViewModel(this._repository);

  final _bodybuildingDetailFetcher = PublishSubject<QuerySnapshot>();

  Observable<QuerySnapshot> get allBodybuildingPosture => _bodybuildingDetailFetcher.stream;

  getAllBodybuilding(String id) async {
    QuerySnapshot itemModel = await _repository.getAllBodybuildingListPosture(id);
    _bodybuildingDetailFetcher.sink.add(itemModel);
  }

  dispose() {
    _bodybuildingDetailFetcher.close();
  }
}