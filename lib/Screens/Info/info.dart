import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:welcome/Components/cornerRoundButton.dart';
import 'package:welcome/Components/linearProgressIndicator.dart';
import 'package:welcome/Mobx/infoStore.dart';
import 'package:welcome/Screens/CreateActivity/createActivity.dart';

class InfoForm extends StatefulWidget {
  InfoForm({Key? key}) : super(key: key);

  @override
  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  @override
  Widget build(BuildContext context) {
    final infoStore = Provider.of<InfoStore>(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
              child: LinearIndicator(size.width * .8, 20.0, 0.2, Colors.black26,
                  Color(0xFF39baff))),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * .05),
        height: size.height,
        child: Column(
          children: [
            Center(
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * .02),
              child: Text(
                "Welcome super parent!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: size.height * .02),
              child: Text(
                "Every wondered a way to manage your kids screen time, while rewarding good work. Start your journey now with screen coach",
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.5, color: Colors.black54),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "What is your name?",
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .01, bottom: size.height * .02),
              child: Observer(
                builder: (_) => TextField(
                  onChanged: (value) {
                    infoStore.setName(value);
                  },
                  decoration: InputDecoration(
                      hintText: "Insert your name",
                      errorText: infoStore.error.name,
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "What's your first childs name'",
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .01, bottom: size.height * .01),
              child: Observer(
                builder: (_) => TextField(
                  onChanged: (value) {
                    infoStore.setChildName(value);
                  },
                  decoration: InputDecoration(
                      hintText: "Insert your childs name",
                      errorText: infoStore.error.childName,
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * .04, bottom: size.height * .02),
                child: Text(
                  "You can add more children later",
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "What is your email address?",
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .01, bottom: size.height * .06),
              child: Observer(
                builder: (_) => TextField(
                  onChanged: (value) {
                    infoStore.setEmail(value);
                  },
                  decoration: InputDecoration(
                      hintText: "Insert your email address",
                      errorText: infoStore.error.email,
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  infoStore.validateAll();
                  if (infoStore.success) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                CreateActivity()));
                  }
                },
                child: CornerRoundedButton(size.width * .3, Color(0xFF39baff),
                    "Continue", Colors.white.withOpacity(0.9), 18.0)),
          ],
        ),
      ),
    );
  }
}
