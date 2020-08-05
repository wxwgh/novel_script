import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(new MaterialApp(
    title: '页面切换动画',
    home: new FirstPage(),
  ));
}
class MyIcons {
  // 加号 图标
  static const IconData add =
  const IconData(0xe627, fontFamily: 'self', matchTextDirection: true);
  // 圆圈禁止3D图标
  static const IconData no3D =
  const IconData(0xe601, fontFamily: 'self', matchTextDirection: true);
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("页面切换动画图一"),
      ),
      body: new GestureDetector(
        child: new Hero(
          tag: '第一张图片',
          child: Icon(
            MyIcons.add,
          ),
        ),
        onTap: () {
          Navigator.push(context, new MaterialPageRoute(builder: (_) {
            return new SecondPage();
          }));
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("页面切换动画图二"),
      ),
      body: new GestureDetector(
        child: new Hero(
          tag: "第二张图片",
          child: new Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1596517597401&di=badcdbe8a110d2ee7e8ab7a1cba8d829&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F16%2F12%2F01300535031999137270128786964.jpg"),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
