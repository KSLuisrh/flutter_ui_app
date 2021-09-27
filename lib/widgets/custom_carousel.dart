import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({Key? key, required this.ImgList}) : super(key: key);
  final List<String> ImgList;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
          ),
          items: ImgList.map((img) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      img,
                      width: 100,
                      height: 200,
                      fit: BoxFit.fitHeight,
                    )
                  ],
                ),
              )).toList()),
    );
  }
}
