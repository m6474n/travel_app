import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> listingImgs = [
    {
      'title': "Cozy Cabin in Aspen",
      'image': 'assets/imgs/img3.jpg',
    },
    {
      'title': "Charming Cottage in Tuscany",
      'image': 'assets/imgs/img4.jpg',
    },
    {
      'title': "Modern Loft in New York",
      'image': 'assets/imgs/img5.jpg',
    },
    {
      'title': "Rustic Bungalow in Bal",
      'image': 'assets/imgs/img6.jpg',
    },
    {
      'title': "Seaside Villa in Santorini",
      'image': 'assets/imgs/img7.jpg',
    },
    {
      'title': "Mountain Retreat in Banff",
      'image': 'assets/imgs/img8.jpg',
    },
  ];

  List<String> placesList = [
    "Kyoto, Japan",
    "Marrakech, Morocco",
    "Reykjavik, Iceland",
    "Cusco, Peru",
    "Dubrovnik, Croatia",
    "New Zealand"
  ];



  List<String> carousalImage =[
  'assets/imgs/img3.jpg',
  'assets/imgs/img4.jpg',
  'assets/imgs/img5.jpg',
  'assets/imgs/img6.jpg',
  'assets/imgs/img7.jpg',
  'assets/imgs/img8.jpg',
];
}


