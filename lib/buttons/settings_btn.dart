import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class setting_btn extends StatelessWidget {
  const setting_btn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton.icon(
        onPressed: () {},
        label: Text(""),
        icon: SvgPicture.asset("Setting_alt_fill.svg"),
        style: TextButton.styleFrom(
          minimumSize: Size(10, 10),
          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
          backgroundColor: Color.fromRGBO(203, 206, 212, 0.2),
        ),
      ),
    );
  }
}
