import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/widgets/custom_address.dart';
import 'package:ui_app/widgets/list_address.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Address',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xffD02025),
      ),
      body: ListAddress(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CustomAddress());
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xff021634),
      ),
    );
  }
}
