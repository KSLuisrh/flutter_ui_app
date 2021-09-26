import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'REGISTER',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xffD02025),
      ),
      body: _register(context),
    );
  }

  _register(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage('assets/logo.png'),
              width: 230,
            ),
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Full Name',
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
                        ))),
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
                onPressed: () {},
                child: Text('Register')),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Text(
                'Back to Login',
                style: TextStyle(color: Color(0xff021634), fontSize: 15),
              ),
              onTap: () {
                print('Register form');
                Get.back();
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
