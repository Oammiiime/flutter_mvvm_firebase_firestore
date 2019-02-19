import 'package:fitness/model/BodybuildingPostureModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodybuildingDetailView extends StatefulWidget {
  String title;
  BodybuildingPostureModel data;

  BodybuildingDetailView({Key key, this.title, this.data}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _BodybuildingDetailViewState(data);
}

class _BodybuildingDetailViewState extends State<BodybuildingDetailView> {
  BodybuildingPostureModel data;

  _BodybuildingDetailViewState(this.data);

  @override
  void initState() {
    super.initState();
  }

  Widget buildUi(BuildContext context, String ps) {
    return Text(ps);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Text(data.name)),
    );
  }
}
