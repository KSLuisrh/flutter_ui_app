import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xffD02025),
      ),
      body: Center(
        child: _profile(context),
      ),
    );
  }

  _profile(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipOval(
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Full NAme',
                      hintStyle: TextStyle(color: Color(0xff021634)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff021634), width: 5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff021634), width: 5),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Color(0xff021634)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff021634), width: 5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff021634), width: 5),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Color(0xff021634)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff021634), width: 5),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff021634), width: 5),
                        )))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffD02025),
                    minimumSize: Size(double.infinity, 50)),
                onPressed: () {
                  // Get.off(Home());
                },
                child: Text('Save Changes')),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Text(
                'Logout',
                style: TextStyle(color: Color(0xff021634), fontSize: 15),
              ),
              onTap: () {
                print('Register form');
                Get.offAllNamed("/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
