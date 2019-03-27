import 'package:flutter/material.dart';

class TabNavigationBar extends StatefulWidget {
  @override
  _TabNavigationBarState createState() => _TabNavigationBarState();
}

class _TabNavigationBarState extends State<TabNavigationBar> {
  final titles = ['微信', '通讯录', '发现', '我'];
  final _defaultColor = Colors.black;
  final _activeColor = Colors.green;
  PageController _controller = PageController();
  int _currentIndex = 0;
  void _onTap(index) {
    setState(() {
      _controller.jumpToPage(index);
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(titles[_currentIndex]),
//        backgroundColor: Color(0xff303030),

      actions: <Widget>[
        IconButton(
          icon: Icon(IconData(0xe623, fontFamily: 'appIconFont'), color: Colors.white),
        ),
        PopupMenuItemsWidget(),

      ],
      ),



      body: PageView(
        controller: _controller,
        physics: NeverScrollableScrollPhysics(), // 禁止左右滚动
        children: <Widget>[
//          HomePage(),
//          SearchPage(),
//          TravelPage(),
//          MyPage()
        ],
      ),


//      drawer: Drawer (
//          child: ListView(
//            children: <Widget>[
//
//            ],
//          ),
//      ),



      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: _activeColor,
        unselectedItemColor: _defaultColor,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            title: Text(titles[0]),
            icon: Icon(IconData(0xe715,fontFamily: 'appIconFont'))
          ),

          BottomNavigationBarItem(

            title: Text(titles[1]),
              icon: Icon(IconData(0xe655,fontFamily: 'appIconFont'))
          ),
          BottomNavigationBarItem(
            title: Text(titles[2]),
              icon: Icon(IconData(0xe61b,fontFamily: 'appIconFont'))
          ),
          BottomNavigationBarItem(
            title: Text(titles[3]),
              icon: Icon(IconData(0xe63b,fontFamily: 'appIconFont'))
          ),
        ]
      ),
    );
  }
}


/*
*
* add 菜单栏
* */
class PopupMenuItemsWidget extends StatelessWidget {


  PopupMenuItem  _popupMenuItem(int iconName, String title) {
    return  PopupMenuItem(
        value: "value2",
        child: Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(IconData(iconName, fontFamily: 'appIconFont'))
            ),
            Text(title)
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.only(right: 10),
        child: PopupMenuButton(
            icon: Icon(IconData(0xe602, fontFamily: 'appIconFont')),
            itemBuilder: (BuildContext content) {

              return <PopupMenuEntry>[
                _popupMenuItem(0xe671, '发起聊天'),
                PopupMenuDivider(height: 1),
                _popupMenuItem(0xe617, '添加朋友'),
                PopupMenuDivider(height: 1),
                _popupMenuItem(0xe661, '扫一扫'),
                PopupMenuDivider(height: 1),
                _popupMenuItem(0xe62d, '收付款'),

              ];
            }
        )
    );
  }
}