import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:travel_app/components/customNavBar.dart';
import 'package:travel_app/cotrollers/dashController.dart';
import 'package:travel_app/utility/constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: DashController(),
        builder: (cont) {
          return Scaffold(
              body: Stack(
                children:[
                   cont.widgetList.elementAt(cont.selectedIndex),

                 
                      Positioned(
                       bottom: 10,
                       left: 0,
                       child: Container(
                                            padding: const EdgeInsets.symmetric(horizontal: 12),

                         child: CustomNav(selectedIndex: cont.selectedIndex, onTabChange: (index){
                          cont.changeIndex(index);
                         }),
                       ),
                     
                   )
                ],
              ),
              backgroundColor: bgColor,
            );
        });
  }
}
