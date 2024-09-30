import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travel_app/utility/constants.dart';

class ListingCard extends StatelessWidget {
  final VoidCallback onTap;
  final String image, title;
  const ListingCard({super.key, required this.image, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: height * 0.38,
          width: width * 0.85,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(48),
          ),
          child: Column(
            children: [
              Hero(
                tag: '${image}',
                child: Container(
                  height: height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                    color: primaryColor,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 28,
                                color: Colors.orange,
                              ),
                              Text("${Random.secure().nextInt(5)}.0"),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                " (${Random.secure().nextInt(500)}) ",
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                   
                    Text(
                      "4 guests, 2 bedroom, 2 beds, 1 bathroom",
                      style: TextStyle(color: description, fontSize: 12),
                    ), SizedBox(height: 4,),
                    RichText(
                        text: TextSpan(
                            text: "£111",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: description),
                            children: [
                          TextSpan(
                              text: " £ 91 night, ",
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.none)),
                          TextSpan(
                              text: " £ 273 total, ",
                              style: TextStyle(
                                  color: description,
                                  decoration: TextDecoration.none)),
                        ]))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
