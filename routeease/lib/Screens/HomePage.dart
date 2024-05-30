import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:routeease/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kUpperMainColor,
        // flexibleSpace: Container(
        //     color: kUpperMainColor,
        //   ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: kDownMainColor,
          //height: double.infinity,
          // decoration: klinearGradientDecoration.copyWith(image: const DecorationImage(
          //     image: AssetImage('assets/images/busicon.png'),
          //     fit: BoxFit.contain,
          //   ),),

          child: Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Container(
              decoration: klinearGradientDecoration,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [

                    SizedBox(height: 50,),

                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [Colors.grey, Colors.white,Colors.grey], // Adjust colors as needed
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(bounds);
                      },
                      child: Text(
                        "RouteEase",
                        style: GoogleFonts.amita(
                          color: Colors.black,
                          fontSize: 75,
                        ),
                      ),
                    ),

                    SizedBox(height: 50,),

                    SizedBox(
                      width: 350,
                      height: 100,
                      child: Text(
                        "\"Explore Sri Lanka with ease using our app's detailed maps, route numbers, and essential contacts for a seamless journey.\"",
                        style: GoogleFonts.amita(
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ),
              
                  //   Container(
                  //   child: Image(
                  //     image: AssetImage('assets/images/frontBus.jpeg'),
                  //     ),
                  // ),  
              
                    SizedBox(height:250),

                    Container(
                      // width: 300,
                      // height: 60,
                      decoration: kButtonDecoration.copyWith(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(
                            color: kUpperMainColor,
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/searchLoactionPage');
                        },
                        style: kElevatedButtonStyle,
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Let's Start !",
                            style: GoogleFonts.josefinSans(
                                fontSize: 30, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
