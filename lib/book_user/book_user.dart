import 'package:flutter/material.dart';

class BookUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("我的"),
        ),
        body:Center(
          child: Text("用户信息"),
        )
    );
  }
}