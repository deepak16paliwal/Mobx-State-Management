import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:welcome/Components/cornerRoundButton.dart';
import 'package:welcome/Components/linearProgressIndicator.dart';
import 'package:welcome/Mobx/infoStore.dart';
import 'package:welcome/Screens/CompleteActivity/activityComplete.dart';

class MoreInfo extends StatefulWidget {
  MoreInfo({Key? key}) : super(key: key);

  @override
  _MoreInfoState createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
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
              child: LinearIndicator(size.width * .8, 20.0, 0.35,
                  Colors.black26, Color(0xFF39baff))),
        ],
      ),
      body: Container(
        height: size.height,
        margin: EdgeInsets.symmetric(horizontal: size.width * .05),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * .04),
              child: Center(
                child: Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Color(0xFF39baff)),
                  child: Center(
                    child: Icon(
                      Icons.photo_size_select_actual_outlined,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * .02),
              child: Text(
                "Help us learn more about ${infoStore.childName}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: size.height * .06),
              child: Text(
                "Help us learn more about ${infoStore.childName} so we can work on managing his screen time",
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.5, color: Colors.black54),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "How old is ${infoStore.childName}?",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
              margin: EdgeInsets.only(
                  top: size.height * .01, bottom: size.height * .04),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black38)),
              child: Observer(
                builder: (_) => DropdownButton<String>(
                  isExpanded: true,
                  value: infoStore.age,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: SizedBox(
                      // height: 1.5,
                      // color: Colors.grey[400],
                      ),
                  onChanged: (String? newValue) {
                    infoStore.setAge(newValue!);
                  },
                  items: <String>['Choose here', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "What is ${infoStore.childName}'s screen usage?",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * .01, bottom: size.height * .04),
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black38)),
              child: Observer(
                builder: (_) => DropdownButton<String>(
                  isExpanded: true,
                  value: infoStore.screenUsage,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  hint: Text("Choose her"),
                  underline: SizedBox(),
                  onChanged: (String? newValue) {
                    infoStore.setScreenUsage(newValue!);
                  },
                  items: <String>['Choose here', 'Two', 'Free', 'Four']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * .04),
              child: InkWell(
                  onTap: () {
                    if (infoStore.continues) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CompleteActivity()));
                    } else {
                      Flushbar(
                        title: "Hey ${infoStore.name}",
                        message:
                            "Please Choose ${infoStore.childName}'s Age and Screen Usage.",
                        flushbarPosition: FlushbarPosition.TOP,
                        flushbarStyle: FlushbarStyle.FLOATING,
                        duration: Duration(seconds: 3),
                      )..show(context);
                    }
                  },
                  child: CornerRoundedButton(size.width * .3, Color(0xFF39baff),
                      "Continue", Colors.white.withOpacity(0.9), 18.0)),
            ),
          ],
        ),
      ),
    );
  }
}
