import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rova_23/screens/result_screen.dart';
import 'package:rova_23/screens/select_crops_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImageChooserScreen extends StatefulWidget {
  const ImageChooserScreen({super.key});

  @override
  State<ImageChooserScreen> createState() => _ImageChooserScreenState();
}

class _ImageChooserScreenState extends State<ImageChooserScreen> {
  @override
  void initState() {
    super.initState();
  }

  bool showLoder = true;
  String imagepath = "";

  Future getImageFromGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      final imageTemporary = image.path;
      setState(() {
        imagepath = imageTemporary;
        print(image);

        Timer(const Duration(seconds: 3), (() {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SelectCropsScreen(data: imageTemporary);
          }));
        }));
      });
    }
  }

  Future getImageFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      final imageTemporary = image.path;
      setState(() {
        imagepath = imageTemporary;
        Timer(const Duration(seconds: 3), (() {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SelectCropsScreen(data: imageTemporary);
          }));
        }));
      });
    }
  }

  _storeUserData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('userImg', imagepath);
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 0), () {
      setState(() {
        showLoder = false;
      });
    });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: null,
      body: showLoder == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: SafeArea(
                  left: true,
                  top: true,
                  right: true,
                  bottom: true,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: 260,
                          height: 260,
                          margin: const EdgeInsets.only(top: 100),
                          child: imagepath != ""
                              ? new CircleAvatar(
                                  backgroundImage:
                                      new FileImage(File(imagepath)),
                                  radius: 65.0,
                                )
                              : Image.asset(
                                  'images/imagechooser.png',
                                  fit: BoxFit.cover,
                                ),
                        ),
                        Container(
                          width: 260,
                          height: 45,
                          margin: const EdgeInsets.only(top: 80, bottom: 10),
                          child: ElevatedButton(
                              // style: ElevatedButton.styleFrom(
                              //   primary: Colors.yellow,
                              //   onPrimary: Colors.black, // Background color
                              // ),
                              onPressed: () {
                                getImageFromCamera();
                              },
                              child: const Text(
                                'TAKE PHOTO',
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 0.4,
                                    fontSize: 16),
                              )),
                        ),
                        Container(
                          width: 260,
                          height: 45,
                          margin: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                getImageFromGallery();
                              },
                              child: const Text(
                                'ACCESS GALLERY',
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 0.4,
                                    fontSize: 16),
                              )),
                        ),
                      ],
                    ),
                  )),
            ),
    );
  }
}
