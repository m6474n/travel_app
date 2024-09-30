
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:travel_app/views/booking/booking.dart';
import 'package:travel_app/views/favourite/favourites.dart';
import 'package:travel_app/views/home/home.dart';
import 'package:travel_app/views/messages/messages.dart';

class DashController extends GetxController{



int selectedIndex = 0;

List<Widget> widgetList = [
  Home(),Favourites(),Bookings(), Messages(),
];
  changeIndex (val){
    selectedIndex = val;
    update();
  }

}
