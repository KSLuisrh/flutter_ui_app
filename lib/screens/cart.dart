import 'package:flutter/material.dart';
import 'package:ui_app/widgets/card_item.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                  CardItem(),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Delivery Adress'),
                        Text('Street Puerto Bello, 502, MX')
                      ],
                    ),
                    Text('Change')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text('Payment Method'), Text('Paypal')],
                    ),
                    Text('Change')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    primary: Color(0xffD02025)),
                onPressed: () {},
                child: Text('Checkout (\$300)'))
          ],
        ),
      ),
    );
  }
}
