import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/tokyoContainer.dart';

class bodyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Container(
            child: Column(children: [
          Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Your",
                          style: GoogleFonts.poppins(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              height: 1),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Journals",
                          style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              height: 1),
                        )),
                  ],
                ),
              )),
          Expanded(
            flex: 20,
            child: ListView(
              children: [
                CarouselSlider(
                  items: [
                    GestureDetector(
                      onTap: () {
                        print("inside create");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TokyoContainer()));
                      },
                      child: Container(
                        height: 400,
                        width: 300,
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("tokyo1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("inside create");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TokyoContainer()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13)),
                              image: DecorationImage(
                                // alignment: AlignmentDirectional.bottomCenter,
                                image: AssetImage("tokyobg.jpeg"),
                                fit: BoxFit.cover,
                              )),
                          height: 400,
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 16, 0),
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        child: SvgPicture.asset(
                                            "Favorite_fill.svg"),
                                        onTap: () {
                                          print("object");
                                          SvgPicture.asset(
                                            "Favorite_fill.svg",
                                            color: Colors.grey,
                                          );
                                        },
                                      )),
                                ),
                                Align(
                                  heightFactor: 6,
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Trip to Tokyo",
                                    style: GoogleFonts.poppins(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "March 21,2019",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("inside create");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TokyoContainer()));
                      },
                      child: Container(
                        height: 400,
                        width: 300,
                        margin: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage("tokyo2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 400,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    initialPage: 1,
                    aspectRatio: 12 / 11,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.7,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                  // height: 20,
                  width: 340,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 3)
                      ]),
                  child: GestureDetector(
                    child: OverflowBox(
                      maxHeight: 160,
                      minHeight: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset("Arhive_load_fill.svg"),
                          SvgPicture.asset(
                            "Add_round_fill.svg",
                            height: 70,
                            // width: 120,
                          ),
                          SvgPicture.asset("Img_box_fill.svg")
                        ],
                      ),
                    ),
                    onTap: () {
                      print("inside create");
                      showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Swipe up to read more",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ));
                          });
                    },
                  ))),
        ])));
  }
}
