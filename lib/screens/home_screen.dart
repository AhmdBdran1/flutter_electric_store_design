import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constants.dart';

import '../widgets/home/home_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:homeAppBar(),
      body: HomeBody(),

    );
  }
}


AppBar homeAppBar(){
  return AppBar(
      iconTheme: IconThemeData(
      color: Colors.white,), // Set the color for the drawer icon
    backgroundColor: kPrimaryColor,
    elevation: 0,
    title: Text('مرحبا بكم بمتجر الالكترونيات',

      style: GoogleFonts.almarai(
        textStyle: TextStyle(
          color: Colors.white, // Change this color to your desired color
        ),
      ),
    ),

    centerTitle: false,
    actions: [
      IconButton(
        onPressed: (){},
        icon: Icon(Icons.menu),
      ),
    ],
  );
}