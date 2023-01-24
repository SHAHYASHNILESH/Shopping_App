import 'package:flutter/material.dart';

String uri = 'http://192.168.0.103:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://imgs.search.brave.com/HW8afFJfI2xDWqIcNFahk6a4ECNQPXna2JmZHdEE7DA/rs:fit:1200:400:1/g:ce/aHR0cHM6Ly93d3cu/YXB1cnBsZS5jby93/cC1jb250ZW50L3Vw/bG9hZHMvMjAxOS8w/Mi93aHktZmFzaGlv/bi1icmFuZC1hcHAu/anBn',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
    'https://imgs.search.brave.com/VaF5p957wa89p2VpKqRBW8jtLh79o6gSCaSYuuf2fU8/rs:fit:1000:520:1/g:ce/aHR0cHM6Ly9jZG4w/MS52dWxjYW5wb3N0/LmNvbS93cC11cGxv/YWRzLzIwMTcvMDMv/aG9tZWdyb3duLW1h/a2V1cC1icmFuZHMt/RkkucG5n',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Mobiles',
      'image': 'assets/images/mobiles.jpeg',
    },
    {
      'title': 'Essentials',
      'image': 'assets/images/essentials.jpeg',
    },
    {
      'title': 'Appliances',
      'image': 'assets/images/appliances.jpeg',
    },
    {
      'title': 'Books',
      'image': 'assets/images/books.jpeg',
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/fashion.jpeg',
    },
  ];
}
