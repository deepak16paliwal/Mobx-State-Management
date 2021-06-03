import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome/Components/linearProgressIndicator.dart';
import 'package:welcome/Mobx/infoStore.dart';
import 'package:welcome/Screens/Congratulation/congratulations.dart';

class CompleteActivity extends StatefulWidget {
  CompleteActivity({Key? key}) : super(key: key);

  @override
  _CompleteActivityState createState() => _CompleteActivityState();
}

class _CompleteActivityState extends State<CompleteActivity> {
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
              child: LinearIndicator(size.width * .8, 20.0, 0.45,
                  Colors.black26, Color(0xFF39baff))),
        ],
      ),
      body: Container(
        height: size.height,
        margin: EdgeInsets.symmetric(horizontal: size.width * .05),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.height * .2, bottom: size.height * .06),
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
                "Did ${infoStore.childName} complete the activity?",
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
                """Once yur child has completed the task, select "yes" to reward them with 10 minutes of screen time """,
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.5, color: Colors.black54),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFa5a5a5)),
                    child: Center(
                      child: Text(
                        "No",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                Congratulation()));
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF39baff)),
                    child: Center(
                      child: Text(
                        "Yes",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
