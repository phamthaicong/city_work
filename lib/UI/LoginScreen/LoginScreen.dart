import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:city_work/UI/HomeScreen/HomeScreen.dart';
import 'package:city_work/Common/Navigation.dart';
import 'package:city_work/Common/common.dart' as Common;
import 'package:city_work/Common/colors.dart' as Common;

class LoginScreen extends StatefulWidget {
  @override
  _LoginApp createState() => _LoginApp();
}

class _LoginApp extends State<LoginScreen> {
  String username, password;

  @override
  Widget build(BuildContext context) {
    print(username);
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset('assets/images/logo_nms.png'),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'N',
                        style: TextStyle(
                            fontSize: Common.titleSize,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'M',
                        style: TextStyle(
                            fontSize: Common.titleSize,
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'S',
                        style: TextStyle(
                            fontSize: Common.titleSize,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: TextField(
                      decoration:
                          InputDecoration(labelText: 'Enter your username'),
                    )),
                Container(
                    child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Enter your password'),
                )),
                IntrinsicHeight(
                  child: Container(
                    padding: EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Common.btnLog,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(Common.RADIUS)),
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Roboto'),
                        ),
                        onPressed: () {
                          context.replaceWith(HomeScreen());
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top:10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create by Pham Cong',
                        style:
                            TextStyle(color: Colors.grey, fontFamily: "Roboto"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
