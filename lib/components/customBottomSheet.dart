import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:travel_app/components/customChatBubble.dart';
import 'package:travel_app/utility/constants.dart';

class CustomBootmSheet extends StatelessWidget {
  final List<Map<String, dynamic>> chatList;
  const CustomBootmSheet({super.key, required this.chatList});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widget = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.9,
      width: widget,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(42), topRight: Radius.circular(42))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: HugeIcon(
                      icon: Icons.keyboard_arrow_down,
                      color: primaryColor,
                      size: 32,
                    )),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Football Fanatics",
                  style: TextStyle(fontSize: 18, color: primaryColor),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12),
            height: height * 0.4,
            color: bgColor,
            child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return CustomChatBubble(
                      isSender: chatList[index]['isSender'],
                      message: chatList[index]['chat']);
                }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  HugeIcon(
                      icon: HugeIcons.strokeRoundedAdd01, color: primaryColor),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextFormField(
                    onChanged: (e) {},
                    decoration: InputDecoration(
                        hintText: "Type anything...",
                        hintStyle: TextStyle(color: description, fontSize: 14),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                        suffixIcon: HugeIcon(
                            icon: HugeIcons.strokeRoundedLaughing,
                            color: primaryColor),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(30)),
                            
                            enabledBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(30)),
                            focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(30)),
                          
                            
                            ),

                  )),
                  SizedBox(
                    width: 8,
                  ),
                  HugeIcon(
                      icon: HugeIcons.strokeRoundedCamera01,
                      color: primaryColor),
                  SizedBox(
                    width: 8,
                  ),
                  HugeIcon(
                      icon: HugeIcons.strokeRoundedMic01, color: primaryColor),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
