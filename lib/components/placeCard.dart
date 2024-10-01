import 'package:flutter/material.dart';
import 'package:travel_app/utility/constants.dart';

class PlaceCard extends StatelessWidget {
  final String title, image;
  const PlaceCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height * 0.2,
        width: width * 0.47,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(28),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
                child: Container(  decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(28),
           gradient: const LinearGradient(colors: [
            primaryColor, Colors.transparent,
           ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
           ),
           child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(title, style: const TextStyle(color: whiteColor, fontSize: 16, fontWeight: FontWeight.w500),),
            )),
      ),
    ));
  }
}
