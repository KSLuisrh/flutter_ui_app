import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GAMINGCOM',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xffD02025),
        ),
        body: Login(),
      ),
      getPages: [
        GetPage(name: '/', page: () => Login()),
      ],
    );
  }
}
