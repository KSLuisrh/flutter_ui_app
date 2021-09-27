import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_app/screens/home.dart';
import 'package:ui_app/screens/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _login(context),
    );
  }

  _login(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage('assets/logo.png'),
              width: 250,
            ),
            Column(
              children: [
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
                  Get.off(Home());
                },
                child: Text('Login')),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Text(
                'Create New Account',
                style: TextStyle(color: Color(0xff021634), fontSize: 15),
              ),
              onTap: () {
                print('Register form');
                Get.to(Register());
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  child: Image.asset('assets/fb_icon.png'),
                ),
                CircleAvatar(
                  child: Image.asset('assets/google_icon.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
