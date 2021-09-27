import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
  final List<String> _entries = <String>[
    'Action',
    'Adventures',
    'Battle Royal',
    'Sport',
    'RPG',
    'DLC'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
          height: 50,
          width: double.infinity,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, idx) {
                return Container(
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff021634)),
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: Center(
                        child: Text(
                      '${_entries[idx]}',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Container(
                    height: 10,
                    width: 10,
                  ),
              itemCount: _entries.length)),
    );
  }
}
