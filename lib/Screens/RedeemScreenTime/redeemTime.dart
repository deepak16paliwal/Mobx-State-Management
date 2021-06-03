import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome/Components/cornerRoundButton.dart';
import 'package:welcome/Components/linearProgressIndicator.dart';
import 'package:welcome/Mobx/infoStore.dart';

class RedeemScreenTime extends StatefulWidget {
  RedeemScreenTime({Key? key}) : super(key: key);

  @override
  _RedeemScreenTimeState createState() => _RedeemScreenTimeState();
}

class _RedeemScreenTimeState extends State<RedeemScreenTime> {
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
              child: LinearIndicator(size.width * .8, 20.0, 1.0, Colors.black26,
                  Color(0xFF39baff))),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: size.height,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: size.width * .05),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: size.height * .04, bottom: size.height * .02),
                    child: Center(
                      child: Text(
                        "Redeem for Screen Time",
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
                        "${infoStore.childName}'s added 10 minutes of screentime to\ntodays screen time limit.",
                        textAlign: TextAlign.center,
                        style: TextStyle(height: 2, color: Colors.black87),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: size.width * .05),
                        child: SizedBox(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("2 hrs"),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.blue.shade900,
                              ),
                              Text("0 hrs")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * .05),
                        child: Image.asset(
                          "lib/assets/images/lappy.png",
                          height: 250,
                          width: 250,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .1),
                    child: InkWell(
                        onTap: () {},
                        child: CornerRoundedButton(
                            size.width * .15,
                            Color(0xFF39baff),
                            "View Dashboard",
                            Colors.white.withOpacity(0.9),
                            18.0)),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: SizedBox(
                  width: size.width,
                  child: Center(
                    // ignore: deprecated_member_use
                    child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        )),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
