import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  final List<CarouselItem> items;

  Carousel({required this.items});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.3,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: items.map((item) => item.buildItem()).toList(),
    );
  }
}

class CarouselItem {
  final String imagePath;
  final String title;
  final String subtitle;

  CarouselItem({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  Widget buildItem() {
    return Column(
      children: [
        Image.asset(imagePath),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
