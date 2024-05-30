import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:routeease/constants.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:dropdownfield/dropdownfield.dart';

class searchLoactionPage extends StatefulWidget {
  const searchLoactionPage({super.key});

  @override
  State<searchLoactionPage> createState() => _searchLoactionPageState();
}

class _searchLoactionPageState extends State<searchLoactionPage> {
  String? selectedCity1;
  String? selectedCity2;

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight*0.10),
        child: AppBar(
          toolbarHeight: screenHeight*0.25,
          automaticallyImplyLeading: false,
          backgroundColor: kDownMainColor,
          actions: <Widget>[
            
               Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 30),
                child: IconButton(
                  icon: Icon(Icons.more_horiz),
                  color: Colors.white,
                  iconSize: 35,
                  onPressed: () {
                    // Add your action here
                  },
                ),
              ),
            
            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(right: 30.0, top: 30),
              child: IconButton(
                icon: Icon(Icons.face),
                color: Colors.white,
                iconSize: 35,
                onPressed: () {
                  // Add your action here
                },
              ),
            ),
            // Add more actions as needed
          ],
          // flexibleSpace: Container(
          //   color: Color.fromARGB(255, 3, 75, 69),
          // ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
           color: kDownMainColor,
            width: double.infinity,
            //decoration: klinearGradientDecoration,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: SizedBox(
                      width: screenWidth*0.95,
                      height: screenHeight*0.825,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //1st Item
                          SizedBox(
                            height: screenHeight*0.04,//50
                          ),

                          //2nd Item
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: SizedBox(
                              width: screenWidth*0.7,//300
                              //height: 90,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "Search",
                                    style: GoogleFonts.amita(
                                      fontSize: 50,
                                      color: Color.fromARGB(255, 3, 75, 69),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    "your route here",
                                    style: GoogleFonts.josefinSans(
                                        fontSize: 25,
                                        color: Color.fromARGB(255, 3, 75, 69)),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //3rd
                          SizedBox(
                            height: 0,
                          ),

                          Container(
                            child: Image(
                              image: AssetImage('assets/images/frontBus.jpeg'),
                            ),
                          ),

                          SizedBox(
                            height: screenHeight*0.04,
                          ),

                          //4
                          Container(
                            decoration: kButtonDecoration,
                            width: screenWidth*0.8,
                            height: screenHeight*0.06,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: selectedCity1,
                              underline: SizedBox(),
                              hint: Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(
                                  "Location 1",
                                  style: kButtonTextStyle.copyWith(
                                      color: Colors.black),
                                ),
                              ),
                              onChanged: (String? value) {
                                onDropdownChanged1(value!);
                              },
                              items: city.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text(
                                      value,
                                      style: kButtonTextStyle,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),

                          //5
                          SizedBox(height: 20.0),

                          //6
                          Container(
                            decoration: kButtonDecoration,
                            width: screenWidth*0.8,
                            height: screenHeight*0.06,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: selectedCity2,
                              underline: Container(),
                              hint: Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Text(
                                  "Location 2",
                                  style: kButtonTextStyle.copyWith(
                                      color: Colors.black),
                                ),
                              ),
                              onChanged: (String? value) {
                                onDropdownChanged2(value!);
                              },
                              items: city.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text(
                                      value,
                                      style: kButtonTextStyle,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),

                          //7
                          SizedBox(height: 20.0),

                          //8
                          Container(
                            //decoration: kButtonDecoration.copyWith(),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  //maximumSize: MaterialStateProperty.all(Size(100, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 4, 104, 104)),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  overlayColor:
                                      MaterialStateProperty.all(Colors.white)),
                              onPressed: () {},
                              child: Icon(Icons.search_rounded),
                              // child: Text(
                              //   "Search",
                              //   style: kButtonTextStyle.copyWith(),
                              // )
                            ),
                          ),

                          //9
                          SizedBox(
                            height: 30,
                          ),

                          //10

                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<String> city = [
    "Colombo",
    "Kandy",
    "Galle",
    "Anuradhapura",
    "Badulla",
    "Kurunegala",
    "Jaffna",
    "Batticola",
    "Ratnapura",
    // "Nuwara Eliya"
    // "Monaragala"
    // "Matara"
    // "Kalutara"
    // "Vavniya"
    // "Polonnaruwa"
    // "Puttalama"
    // "Trinco"
    // "Kegalle"
  ];

  onDropdownChanged1(String value) {
    setState(() {
      selectedCity1 = value;
    });
  }

  onDropdownChanged2(String value) {
    setState(() {
      selectedCity2 = value;
    });
  }
}
