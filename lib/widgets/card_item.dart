import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
            'https://cdn1.epicgames.com/salesEvent/salesEvent/EGS_Battlefield2042_DICE_S1_2560x1440-36f16374c9c29a18a46872795b483d72',
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Battlefield 2042'),
            Text('Qty 1 x \$45'),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 18,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Color(0xffD02025),
                  minimumSize: Size(25, 25)),
            ),
            Text('2'),
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.remove,
                color: Colors.white,
                size: 18,
              ),
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Color(0xffD02025),
                  minimumSize: Size(25, 25)),
            ),
          ],
        ),
        Text('\$90.0')
      ],
    );
  }
}
