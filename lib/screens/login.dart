import 'package:flutter/material.dart';

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
                child: Text('Login')),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Text(
                'Create an account',
                style: TextStyle(color: Color(0xff021634), fontSize: 15),
              ),
              onTap: () {
                print('Register form');
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
