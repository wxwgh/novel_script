import 'package:flutter/material.dart';

class BookStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("书店"),
      ),
      body:Center(
        child: Text("书店内容"),
      )
    );
  }
}