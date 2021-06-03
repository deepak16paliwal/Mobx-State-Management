import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:welcome/Components/cornerRoundButton.dart';
import 'package:welcome/Screens/Starting/welcome.dart';

class GetStart extends StatefulWidget {
  GetStart({Key? key}) : super(key: key);

  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * .35),
              child: Image.asset(
                "lib/assets/images/screenCoach.png",
                height: 150,
                width: 150,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "ScreenCoach",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .05, bottom: size.height * .02),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Welcome()));
                },
                child: CornerRoundedButton(size.width*.1,Color(0xFF39baff),"Get started",Colors.white.withOpacity(0.8),18.0),
              ),
            ),
            
            InkWell(
              onTap: () {},
              child: CornerRoundedButton(size.width*.1,Color(0xFFa5a5a5).withOpacity(0.8),"I already have an account",Colors.white.withOpacity(0.8),18.0),
            ),
          ],
        ),
      ),
    );
  }
}
