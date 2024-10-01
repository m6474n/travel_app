import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/utility/constants.dart';

class CustomChatBubble extends StatelessWidget {
  final bool isSender;
  final String message;
  const CustomChatBubble({super.key, required this.isSender, required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isSender ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isSender) Spacer(), 
        BubbleSpecialThree(
          text: message,
          color: isSender ? primaryColor : whiteColor,
          tail: false,
          textStyle: TextStyle(
            color: isSender ? whiteColor : primaryColor,
            fontSize: 16,
          ),
        ),
        if (!isSender) Spacer(), 
      ],
    );
  }
}
