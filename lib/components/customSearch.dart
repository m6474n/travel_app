import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:travel_app/utility/constants.dart';

class CustomSearch extends StatefulWidget {
  const CustomSearch({super.key});

  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          BorderRadius.circular(40), // Ensure the ClipRRect has rounded corners
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                40), // Ensure the Container has rounded corners
            color: Colors.grey.withOpacity(0.3),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      prefixIcon: HugeIcon(
                          icon: HugeIcons.strokeRoundedSearch01,
                          color: whiteColor),
                      hintText: 'Search Places \n Date range. No. of guests',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: whiteColor),
                    ),
                    style: const TextStyle(color: whiteColor),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
