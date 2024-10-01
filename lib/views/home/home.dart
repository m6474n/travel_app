
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:travel_app/components/customSearch.dart';
import 'package:travel_app/components/listingCard.dart';
import 'package:travel_app/components/placeCard.dart';
import 'package:travel_app/cotrollers/homeController.dart';
import 'package:travel_app/utility/constants.dart';
import 'package:travel_app/views/listing/listingDetails.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GetBuilder(
        init: HomeController(),
        builder: (cont) {
          return Scaffold(
            backgroundColor: bgColor,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: height * 0.34,
                      width: width,
                      decoration: const BoxDecoration(
                          color: primaryColor,
                          image: DecorationImage(
                              image: AssetImage('assets/imgs/img1.png'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50))),
                        child: SafeArea(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 24.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      child: const Row(
                                        children: [
                                          HugeIcon(
                                              icon: HugeIcons.strokeRoundedSent,
                                              color: whiteColor),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "Norway",
                                            style: TextStyle(color: whiteColor),
                                          )
                                        ],
                                      ),
                                    )),
                                    const Expanded(
                                        child: Align(
                                      alignment: Alignment.centerRight,
                                      child: HugeIcon(
                                          icon: HugeIcons.strokeRoundedUser,
                                          color: whiteColor),
                                    ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Hey Martin!, Tell us where you want to go",
                                  style: TextStyle(
                                      color: whiteColor,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const CustomSearch(),
                              ],
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      "The most relevant",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                      height: height * 0.38,
                      margin: const EdgeInsets.only(top: 8),
                      child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(left: index == 0 ? 8 : 0),
                            child: ListingCard(
                              onTap: () {
                                Get.to(ListingDetails(
                                  title: cont.listingImgs[index]['title'],
                                  image: cont.listingImgs[index]['image'],
                                  imageList: cont.carousalImage,
                                ));
                              },
                              image: cont.listingImgs[index]['image'],
                              title: cont.listingImgs[index]['title'],
                            ),
                          );
                        },
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Discover New Places",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                      height: height * 0.15,
                      margin: const EdgeInsets.only(top: 8),
                      child: ListView.builder(
                        itemCount: cont.placesList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding:
                                  EdgeInsets.only(left: index == 0 ? 8 : 0),
                              child: PlaceCard(
                                title: cont.placesList[index],
                                image: cont.listingImgs[index]['image'],
                              ));
                        },
                      )),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
