import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/screens/profile.dart';

class AccountListView extends StatelessWidget {
  const AccountListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('Luis Ramirez'), Text('9996458232')],
                ),
              )
            ],
          ),
          trailing: GestureDetector(
            child: Text('Edit'),
            onTap: () {
              Get.to(Profile());
            },
          ),
        ),
        SwitchListTile(
            activeColor: Color(0xff021634),
            contentPadding: EdgeInsets.only(right: 0),
            title: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25),
                  child: Icon(
                    Icons.notifications_active_outlined,
                    color: Color(0xff021634),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 29),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Notifications'),
                      Text('Turn on/off Notifications')
                    ],
                  ),
                )
              ],
            ),
            value: true,
            onChanged: (value) {}),
        ListTile(
          title: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0xff021634),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('My Orders'), Text('Manage Orders')],
                ),
              )
            ],
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Color(0xff021634),
          ),
        ),
        ListTile(
          title: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0xff021634),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My Adresses'),
                    Text('Manage Delivery Adresses')
                  ],
                ),
              )
            ],
          ),
          trailing: Icon(
            Icons.arrow_forward,
            color: Color(0xff021634),
          ),
        ),
      ],
    );
  }
}
