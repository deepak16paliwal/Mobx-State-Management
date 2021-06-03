import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome/Components/cornerRoundButton.dart';
import 'package:welcome/Components/linearProgressIndicator.dart';
import 'package:welcome/Mobx/infoStore.dart';
import 'package:welcome/Screens/RedeemScreenTime/redeemTime.dart';

class Congratulation extends StatefulWidget {
  Congratulation({Key? key}) : super(key: key);

  @override
  _CongratulationState createState() => _CongratulationState();
}

class _CongratulationState extends State<Congratulation> {
  @override
  Widget build(BuildContext context) {
    final infoStore = Provider.of<InfoStore>(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black26,
              size: 30,
            )),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .05),
              child: LinearIndicator(size.width * .8, 20.0, 0.55,
                  Colors.black26, Color(0xFF39baff))),
        ],
      ),
      body: Container(
        height: size.height,
        color: Colors.white,
        margin: EdgeInsets.symmetric(horizontal: size.width*.05),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * .04,bottom:size.height * .02 ),
              child: Center(
                child: Text(
                  "Congratulations!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: size.height * .06),
              child: Center(
                child: Text(
                  """${infoStore.childName} has just earned 10 tokens""",
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.5, color: Colors.black87),
                ),
              ),
            ),
            Image.asset("lib/assets/images/coin.png",
            height: 150,
            width: 150,
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * .04),
              child: Text("What would ${infoStore.childName} like to do with his tokens?"),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * .15, bottom: size.height * .02),
              child: Text("Convert to"),
            ),
            Padding(
                padding:  EdgeInsets.only(bottom:size.height*.02),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => RedeemScreenTime()));
                  },
                  child: CornerRoundedButton(size.width * .1, Color(0xFF39baff),
                      "Screen Time", Colors.white.withOpacity(0.9), 18.0)),
              ),
              InkWell(
                  onTap: () {},
                  child: CornerRoundedButton(size.width * .1, Color(0xFF39baff),
                      "Gems (Pocket Money)", Colors.white.withOpacity(0.9), 18.0)),
          ],
        ),
      ),
    );
  }
}
