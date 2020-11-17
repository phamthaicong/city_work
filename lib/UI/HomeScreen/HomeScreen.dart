import 'package:city_work/UI/LoginScreen/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:city_work/Common/Navigation.dart';
import 'package:city_work/UI/Camera/CameraScreen.dart';
import 'package:city_work/UI/HomeScreen/HomePage.dart';
import 'package:city_work/UI/MapScreen/MapScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _Home createState() => _Home();
}

class _Home extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // ignore: non_constant_identifier_names
  Widget DrawerUI() {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset('assets/images/user_image.png',
                    width: 50, height: 50),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        'Phạm Thái Công',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        'congpt@nms.com.vn',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        '0332902919',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('Thông tin tài khoản'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Phiên bản'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Đăng xuất'),
          onTap: () {
            context.replaceWith(LoginScreen());
          },
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerUI(),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text('Trang chủ'),
      ),
      body:_getPage(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Chụp ảnh',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Bản đồ',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
// ignore: missing_return
Widget _getPage(int page){
  if(page==null){
    return HomePage();
  }
  switch(page){
    case 0:
      return HomePage();
    case 1 :
      return CameraScreen();
    case 2:
      return MapScreen();
  }
}
