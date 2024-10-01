import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/components/roundedButton.dart';
import 'package:travel_app/utility/constants.dart';

class CustomFloatingBtn extends StatelessWidget {
 final VoidCallback OnTap;
  const CustomFloatingBtn({super.key, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;
    return  ClipRRect(
       borderRadius: BorderRadius.circular(80), 
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
        child: Container(
          
          height: 80,
          width: MediaQuery.of(context).size.width*0.95
        ,                  padding: const EdgeInsets.symmetric(
              horizontal: 15.0, vertical: 12),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(80)),child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("18 - 21 Oct. 3 nights",style: TextStyle(color: whiteColor, fontSize: 12),),
              Text("£383", style: TextStyle(color: whiteColor, fontSize: 24, fontWeight: FontWeight.w500),)],
            ),
          ), SizedBox(width: 120,child: RoundedButton(title: "Book Now", color: whiteColor, onTap: OnTap,),)
        ],
      ),))
    );
  }
}
