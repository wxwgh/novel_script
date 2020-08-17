import 'package:flutter/material.dart';
import './loading.dart';
import './app.dart';
import './book_store/book_store.dart';
import './book_shelf/book_shelf.dart';

//应用程序入口
void main() => runApp(MaterialApp(
      //清除右上角debug图标
      debugShowCheckedModeBanner: false,
      title: 'flutter小说阅读器',
      //自定义主题
      theme: theme,
      routes: <String,WidgetBuilder>{
        "/book_shelf":(BuildContext context) => new BookShelf(),
        "/book_store":(BuildContext context) => new BookStore(),
      },
      //指定首页
      home: new AppPage(),
    ));

//自定义全局 主题风格
final ThemeData theme = new ThemeData(
  //标题颜色
  primaryColor: Colors.white,
  //脚手架页面背景颜色
  scaffoldBackgroundColor: Colors.white,
  //字体颜色
  textTheme:TextTheme(bodyText2:TextStyle(color: Colors.black))
);
