import 'package:flutter/material.dart';

class CustomAddress extends StatelessWidget {
  const CustomAddress({Key? key, this.isEdit = false}) : super(key: key);
  final bool isEdit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (isEdit) ...[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            )
          ]
        ],
        title: Text(
          isEdit ? ('Edit Address') : 'Add Address',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xffD02025),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Container(
              child: Image.network(
                'https://guiauniversitaria.mx/wp-content/uploads/2020/02/Estas-son-las-5-nuevas-funciones-que-implemento%CC%81-Google-Maps.jpg',
                width: double.infinity,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Tag (Eg, Home, Office)',
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
                        hintText: 'Name',
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Mobile Number',
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
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Full Address',
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
