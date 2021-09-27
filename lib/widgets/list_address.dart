import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/widgets/custom_address.dart';

class ListAddress extends StatelessWidget {
  const ListAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Home'),
          subtitle: Text('Street Puerto Bello 560, MX'),
          trailing: GestureDetector(
            child: Icon(Icons.edit_outlined),
            onTap: () {
              Get.to(CustomAddress(
                isEdit: true,
              ));
            },
          ),
        )
      ],
    );
  }
}
