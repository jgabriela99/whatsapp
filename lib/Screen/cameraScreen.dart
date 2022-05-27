import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  @override
  CameraScreenState createState() => new CameraScreenState();
}

class CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text("Camara"),
      ),
    );
  }
}
