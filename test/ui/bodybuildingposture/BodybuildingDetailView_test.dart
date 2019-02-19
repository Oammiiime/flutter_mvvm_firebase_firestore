import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/filebase/cloudfilestore/BodybuildingProvider.dart';
import 'package:fitness/ui/bodybuildingposture/BodybuildingPostureRepo.dart';
import 'package:fitness/ui/bodybuildingposture/BodybuildingPostureViewModel.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_api/test_api.dart';
class MockRepository extends Mock implements BodybuildingPostureRepo {}
class MockQuerySnapshot extends Mock implements QuerySnapshot {}
class  MockPublishSubject extends Mock implements PublishSubject {}
class MockBodybuildingProvider extends Mock implements BodybuildingProvider {}

final _bodybuildingPostureFetcher = PublishSubject<QuerySnapshot>();
Observable<QuerySnapshot> get allBodybuildingPosture => _bodybuildingPostureFetcher.stream;
void main() {
  MockRepository mockRepository;
  BodybuildingPostureViewModel bodybuildingPostureViewModel;
  setUp(() {
    mockRepository = MockRepository();
    bodybuildingPostureViewModel = BodybuildingPostureViewModel(mockRepository);
  });
  Future<QuerySnapshot> s   ;
  test('returns a Post if the http call completes successfully', () async {
    bodybuildingPostureViewModel.getAllBodybuildingPosture();
    when(mockRepository.getAllBodybuildingPosture()).thenReturn(s);

   expect(bodybuildingPostureViewModel.allBodybuildingPosture,s);
  });


}