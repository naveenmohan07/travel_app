import 'package:flutter/material.dart';
import 'package:travel_app/buttons/settings_btn.dart';
import 'package:travel_app/screens/bodyContainer.dart';
import 'package:travel_app/screens/tokyoContainer.dart';

class headerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("profile.png"),
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        actions: [setting_btn()],
      ),
      body: bodyContainer(),
    ));
  }
}
