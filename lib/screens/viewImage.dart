import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/buttons/editButton.dart';

class ViewImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(13)),
                image: DecorationImage(
                  // alignment: AlignmentDirectional.bottomCenter,
                  image: AssetImage("tokyobg.jpeg"),
                  fit: BoxFit.cover,
                )),
            height: 400,
            width: 300,
          ),
          Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the imen book",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              )),
          editButton(),
        ],
      ),
    );
  }
}
