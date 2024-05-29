import 'package:flutter/material.dart';
import 'package:game_store/components/carousel/carousel_card.dart';
import 'package:game_store/data/data.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,

        // hard coded yess i know!
        children: [
          CarouselCard(
              src: data[4]["src"], color: Color.fromARGB(255, 236, 201, 57)),
          const SizedBox(width: 10),
          CarouselCard(
              src: data[5]["src"], color: Color.fromARGB(255, 236, 201, 57)),
          const SizedBox(width: 10),
          CarouselCard(
              src: data[7]["src"], color: Color.fromARGB(255, 236, 201, 57)),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
