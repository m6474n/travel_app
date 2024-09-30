import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travel_app/utility/constants.dart';

class CustomNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;
  const CustomNav({super.key, required this.selectedIndex, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
       borderRadius: BorderRadius.circular(80), 
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
        child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width*0.95
        ,                  padding: const EdgeInsets.symmetric(
              horizontal: 15.0, vertical: 8),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(80)),
          child: GNav(
            // rippleColor: secondaryColor,
            // hoverColor: secondaryColor,
            gap: 8,
            activeColor: primaryColor,
                    
            iconSize: 30,
            padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            duration: Duration(milliseconds: 400),
            tabActiveBorder: Border.all(color: whiteColor),
                    
            tabBackgroundColor: whiteColor,
            color: whiteColor,
            tabs: const [
              GButton(
                icon: Icons.explore,
                text: 'Home',
                textStyle: TextStyle(
                    fontFamily: "Inter",
                    color: primaryColor,
                    fontSize: 14),
              ),
              GButton(
                icon: Icons.favorite_border_sharp,
                text: 'Favourites',
                textStyle:
                    TextStyle(color: primaryColor, fontSize: 14),
              ),
              GButton(
                icon: Icons.splitscreen_sharp,
                iconSize: 24,
                text: 'Bookings',
                textStyle:
                    TextStyle(color: primaryColor, fontSize: 14),
              ),
              GButton(
                icon: Icons.chat_bubble_outline,
                iconSize: 24,
                text: 'Messages',
                textStyle:
                    TextStyle(color: primaryColor, fontSize: 14),
              ),
            ],
            selectedIndex: selectedIndex,
            onTabChange: (index) {
             onTabChange(index);
            },
          ),
        ),
      ),
    );
  }
}