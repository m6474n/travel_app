import 'package:get/get.dart';

class ListingController extends GetxController{
List<String> amenities = [
  "Free Wi-Fi",
  "Air Conditioning",
  "Heating",
  "Equipped Kitchen",
  "Washer/Dryer",
  "Parking",

];


List<Map<String, dynamic>> chatMessages = [
  {
    "chat": "Hey, how are you?",
    "isSender": true,
  },
  {
    "chat": "I'm good, thanks! How about you?",
    "isSender": false,
  },
  {
    "chat": "Doing well, just working on a project.",
    "isSender": true,
  },
  {
    "chat": "That sounds interesting. What kind of project?",
    "isSender": false,
  },
  {
    "chat": "It's a mobile app for tracking fitness activities.",
    "isSender": true,
  },
  {
    "chat": "Wow, that's cool! Need any help?",
    "isSender": false,
  },
  {
    "chat": "Thanks! I might take you up on that. I'll let you know.",
    "isSender": true,
  },
  {
    "chat": "Sure, just let me know anytime.",
    "isSender": false,
  },
  {
    "chat": "Will do. By the way, are you free this weekend?",
    "isSender": true,
  },
  {
    "chat": "Yes, I am. Do you have any plans?",
    "isSender": false,
  },
  {
    "chat": "Thinking of going hiking. Want to join?",
    "isSender": true,
  },
  {
    "chat": "I'd love to! Count me in.",
    "isSender": false,
  },
  {
    "chat": "Great! I'll send you the details later.",
    "isSender": true,
  },
  {
    "chat": "Looking forward to it!",
    "isSender": false,
  },
];


bool isVisible= false;
bool isBottomSheetVisible= false;

showSlider(){
  isVisible = !isVisible;

update();}
showBottomSheet(){
  isBottomSheetVisible = !isBottomSheetVisible;

update();}

}