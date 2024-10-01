import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:travel_app/components/customBottomSheet.dart';
import 'package:travel_app/components/customFloatingButton.dart';
import 'package:travel_app/components/customSlider.dart';
import 'package:travel_app/cotrollers/listingController.dart';
import 'package:travel_app/utility/constants.dart';

class ListingDetails extends StatelessWidget {
  final String image, title;
  final List<String> imageList;
  const ListingDetails(
      {super.key,
      required this.image,
      required this.title,
      required this.imageList});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder(
        init: ListingController(),
        builder: (cont) {
          return Scaffold(
              backgroundColor: bgColor,
              body: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      height: height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: '${image}',
                            child: Container(
                              height: height * 0.34,
                              width: width,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  image: DecorationImage(
                                      image: AssetImage(image),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50))),
                              // child: ImageSliderScreen(),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: primaryColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 8),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 26,
                                        color: Colors.orange,
                                      ),
                                      Text("Rating"),
                                      SizedBox(width: 12),
                                      Text("Reviews")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: primaryColor.withOpacity(0.2),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Entire Home",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Text(
                                              "Hosted by Isaballe",
                                              style: TextStyle(
                                                  color: description,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundColor: primaryColor,
                                        )
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: primaryColor.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Amenities",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Wrap(
                                    direction: Axis.horizontal,
                                    spacing: 8,
                                    runSpacing: 8,
                                    children: List.generate(
                                        cont.amenities.length, (index) {
                                      return Container(
                                          constraints:
                                              BoxConstraints(minWidth: 100),
                                          child: Features(
                                              title: cont.amenities[index]));
                                    }),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: primaryColor.withOpacity(0.2),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  ReuseableRow(
                                      title: "Self check-in",
                                      desc:
                                          "Check-in yourself with the lockbox",
                                      icon: HugeIcons.strokeRoundedLocation01),
                                  ReuseableRow(
                                      title: "Great check-in experience",
                                      desc:
                                          "100% of the recent guest gave the check-in process  5-star rating.",
                                      icon: HugeIcons.strokeRoundedKey01)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: CustomFloatingBtn(
                          OnTap: (){
                            Get.bottomSheet(CustomBootmSheet(chatList: cont.chatMessages,));

                          },
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 400),
                          height: cont.isVisible ? height * 0.34 : 0,
                          width: width,
                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(
                                0.2), 
                            borderRadius: BorderRadius.circular(42),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 28.0),
                            child: Container(
                               
                                ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          width: width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: BackdropFilter(
                                    filter:
                                        ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: HugeIcon(
                                            icon: Icons.close,
                                            color: whiteColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              cont.isVisible
                                  ? GestureDetector(
                                      onTap: () {
                                        cont.showSlider();
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 8, sigmaY: 8),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: HugeIcon(
                                                  icon: HugeIcons
                                                      .strokeRoundedUpload01,
                                                  color: whiteColor),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    cont.isVisible
                        ? Container()
                        : Positioned(
                            top: height * 0.27,
                            right: 26,
                            child: GestureDetector(
                              onTap: () {
                                cont.showSlider();
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: HugeIcon(
                                          icon: HugeIcons.strokeRoundedImage01,
                                          color: whiteColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                       
                  ],
                ),
              ));
        });
  }
}

class Features extends StatelessWidget {
  final String title;
  const Features({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(
        title,
        style: TextStyle(color: primaryColor),
      ),
      decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(30)),
    );
  }
}

class ReuseableRow extends StatelessWidget {
  final String title, desc;
  final IconData icon;
  const ReuseableRow(
      {super.key, required this.title, required this.desc, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              HugeIcon(
                icon: icon,
                size: 28,
                color: primaryColor,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              )
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            desc,
            style: TextStyle(fontSize: 12, color: Colors.black87),
          )
        ],
      ),
    );
  }
}
