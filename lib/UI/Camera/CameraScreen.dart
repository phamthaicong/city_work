import 'dart:io';
import 'package:flutter/material.dart';
import 'package:city_work/Common/common.dart' as Common;
import 'package:city_work/Common/colors.dart' as Common;
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  @override
  Camera createState() => Camera();
}

class Camera extends State<CameraScreen> {
  File imgFile;
  var listImage = new List<File>();
  final picker = ImagePicker();

  Future _getImageFromGallry(BuildContext context) async {
    var picture = await picker.getImage(source: ImageSource.gallery);
    this.setState(() {
      imgFile = File(picture.path);
      // listImage.add(imgFile);
    });
    // print('mảng ảnh--->${listImage}');
  }

  Future _getImageFromCamera(BuildContext context) async {
    var picture = await picker.getImage(source: ImageSource.camera);
    this.setState(() {
      imgFile = File(picture.path);
      // listImage.add(imgFile);
    });
    // print('mảng ảnh--->${listImage}');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imgFile == null
                  ? Text('Chưa có ảnh')
                  : Container(
                      child: Image.file(
                        imgFile,
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.6,
                      ),
                    ),
              Container(
                child: RaisedButton(
                  splashColor: Common.colorAction,
                  onPressed: () {
                    imgFile == null ? null : print('hello');
                  },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(Common.RADIUS)),
                  ),
                  child: Text(
                    'Gửi',
                    style: TextStyle(color: Colors.black, fontFamily: 'Roboto'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    splashColor: Common.colorAction,
                    onPressed: () {
                      _getImageFromGallry(context);
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(Common.RADIUS)),
                    ),
                    child: Text(
                      'Chọn tệp',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Roboto'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: RaisedButton(
                      splashColor: Common.colorAction,
                      onPressed: () {
                        _getImageFromCamera(context);
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(Common.RADIUS)),
                      ),
                      child: Text(
                        'Camera',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
