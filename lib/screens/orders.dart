import 'package:flutter/material.dart';
import 'package:ui_app/widgets/orders_list.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Manage Orders',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xffD02025),
        ),
        body: OrdersList());
  }
}
