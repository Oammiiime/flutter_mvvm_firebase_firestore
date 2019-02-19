import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness/filebase/cloudfilestore/BodybuildingProvider.dart';
import 'package:fitness/ui/BodybuildingDetail/BodybuildingDetailView.dart';
import 'package:fitness/model/BodybuildingPostureModel.dart';
import 'package:fitness/ui/bodybuildingposture/BodybuildingPostureRepo.dart';
import 'package:fitness/ui/bodybuildingposture/BodybuildingPostureViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BodybuildingPostureView extends StatefulWidget {
  BodybuildingPostureView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BodybuildingPostureViewState createState() =>
      new _BodybuildingPostureViewState();
}

class _BodybuildingPostureViewState extends State<BodybuildingPostureView> {
  final viewModel = BodybuildingPostureViewModel(BodybuildingPostureRepo(BodybuildingProvider()));

  @override
  void initState() {
    super.initState();
    viewModel.getAllBodybuildingPosture();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  Widget buildList(AsyncSnapshot<QuerySnapshot> snapshot) {
    return GridView.builder(
        itemCount: snapshot.data.documents.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          final record = BodybuildingPostureModel.fromSnapshot(
              snapshot.data.documents[index]);
          return GridTile(
              child: InkResponse(
            enableFeedback: true,
            child: new Card(
                child: CachedNetworkImage(
              placeholder: Image.asset("assets/images/ic_placeholder.png"),
              imageUrl: record.image,
              fit: BoxFit.fill,
            )),
            onTap: () => openDetailPage(record),
          ));
        });
  }

  openDetailPage(BodybuildingPostureModel data) {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (__) => new BodybuildingDetailView(title: data.name,data: data)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder(
        stream: viewModel.allBodybuildingPosture,
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
         // print("Oammiiime11"+snapshot.data.documents[0].toString());
          if (snapshot.hasData) {
            print("Oammiiime22"+snapshot.data.documents[0].toString());
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
