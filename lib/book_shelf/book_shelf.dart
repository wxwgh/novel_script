import 'package:flutter/material.dart';
import '../iconfont.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BookShelf extends StatefulWidget {
  BookShelf({Key key}) : super(key: key);
  @override
  _BookShelfState createState() => _BookShelfState();
}

class _BookShelfState extends State<BookShelf> {
  var datas=[
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
    {
      "name":"史上最强师兄",
      "imageUrl":"images/150.jfif"
    },
  ];
  List<Widget> coverList(){
    List<Widget> children =[];
    for(var i=0;i<datas.length;i++){
      children.add(Container(
        margin: const EdgeInsets.all(15.0),
        child:Column(
          //将子控件放在交叉轴的起始位置
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DecoratedBox(
              child: Image.asset(
                  "images/180.jfif",
                  fit:BoxFit.fill,
                  width:150,
                  height:200
              ),
              decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
            ),
            SizedBox(height: 10),
            Text(datas[i]["name"], style: TextStyle(fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis),
          ],
        )
      ));
    }
    return children;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //头部元素
      appBar: AppBar(
        title: Text('书架'),
        //底部边框宽度
        elevation:1,
        actions: <Widget>[
          IconButton(
            icon: Icon(IconFont.list),
            iconSize: 24.0,
          ),
        ],
        //标题居中
        centerTitle: true,
      ),
      //视图内容部分
      body: GridView.count(
        primary:false,
        padding: const EdgeInsets.all(20.0),
        childAspectRatio:0.65,
        crossAxisSpacing: 10.0,
        crossAxisCount: 3,
        children:coverList()
      ),
    );
  }
}
