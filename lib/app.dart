import 'package:flutter/material.dart';
import './iconfont.dart';
import './book_store/book_store.dart';
import './book_shelf/book_shelf.dart';
import './book_user/book_user.dart';

class AppPage extends StatefulWidget {
  AppPage({Key key}) : super(key: key);
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //视图内容部分
      body: IndexedStack(
        children: <Widget>[
          BookShelf(),
          BookStore(),
          BookUser()
        ],
        index: _index
      ),
      //底部导航栏
      bottomNavigationBar: BottomNavigationBar(
          //当前索引
          currentIndex: _index,
          //选中按钮颜色
          fixedColor: Colors.blue,
          //按钮图标大小
          iconSize: 24.0,
          onTap: _onTap,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(IconFont.book_shelf), title: Text('书架')),
            BottomNavigationBarItem(
                icon: Icon(IconFont.book_store), title: Text('书店')),
            BottomNavigationBarItem(
                icon: Icon(IconFont.book_user), title: Text("我的")),
          ],
          //当items超过4个 需要设置此项以确保显示正常
          type: BottomNavigationBarType.fixed),
    );
  }
  void _onTap(int index) {
    setState(() {
      _index = index;
    });
  }
}
