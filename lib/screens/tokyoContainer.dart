import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/buttons/editButton.dart';
import 'package:travel_app/screens/bodyContainer.dart';
import 'package:travel_app/screens/fullScreen.dart';
import 'package:travel_app/screens/headerBar.dart';
import 'package:travel_app/screens/viewImage.dart';

class TokyoContainer extends StatelessWidget {
  String svgPath = "Favorite_fill.svg";
  List imgPath = [
    'tokyobg.jpeg',
    'tokyo1.png',
    'tokyo2.png',
    'tokyobg.jpeg',
    'tokyo1.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  image: DecorationImage(
                    image: AssetImage("tokyobg.jpeg"),
                    fit: BoxFit.cover,
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: SvgPicture.asset("Expand_left.svg"),
                          onTap: () {
                            print("inside create");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => headerBar()));
                          },
                        ),
                        SvgPicture.asset(svgPath)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Align(
                            heightFactor: 6,
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Trip to Tokyo",
                              style: GoogleFonts.poppins(
                                  fontSize: 34,
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
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Journal",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "Expand_left.svg",
                          color: Colors.grey,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("inside create");
                            showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return ViewImage();
                                });
                          },
                          child: Text(
                            "Click here to readmore!!",
                            style: GoogleFonts.poppins(
                                fontSize: 12, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: [
                  Flexible(
                      child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                children: [
                  editButton(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "Img_box_fill.svg",
                          height: 20,
                        ),
                        Text(
                          "Photos",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset("Add_round_fill.svg")
                  ]),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                child: GestureDetector(
                  onTap: () {
                    print("object");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => fullScreen()));
                  },
                  child: Wrap(

                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: imgPath
                          .map((i) => ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    i,
                                    height: 120,
                                  ),
                                ),
                              ))
                          .toList()),
                ))
          ],
        ),
      ),
    ));
  }
}
