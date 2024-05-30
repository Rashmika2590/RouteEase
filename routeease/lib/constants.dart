import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kDownMainColor = Color.fromARGB(255, 3, 75, 69);
const kUpperMainColor = Color.fromARGB(255, 0, 4, 4);

//Body Style
const BoxDecoration klinearGradientDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment(0, -0.5),
    end: Alignment.bottomCenter,
    colors: <Color>[kUpperMainColor, kDownMainColor],
  ),
);

//Button Style
 ButtonStyle kElevatedButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.grey.shade300),
  foregroundColor: MaterialStateProperty.all(Colors.black),
  maximumSize: MaterialStateProperty.all( Size(300, 55)),
  minimumSize: MaterialStateProperty.all( Size(300, 55)),
  overlayColor: MaterialStateProperty.all(Colors.blueGrey),
);

var kButtonTextStyle =GoogleFonts.josefinSans(
                          fontSize: 20, fontWeight: FontWeight.normal);

 var kButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Color.fromARGB(255, 4, 104, 104),
      spreadRadius: 0,
      blurRadius: 2,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ],
);