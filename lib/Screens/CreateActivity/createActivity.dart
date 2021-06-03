import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome/Components/cornerRoundButton.dart';
import 'package:welcome/Components/linearProgressIndicator.dart';
import 'package:welcome/Mobx/infoStore.dart';
import 'package:welcome/Screens/Info/moreInfor.dart';

class CreateActivity extends StatefulWidget {
  CreateActivity({Key? key}) : super(key: key);

  @override
  _CreateActivityState createState() => _CreateActivityState();
}

class _CreateActivityState extends State<CreateActivity> {
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
              child: LinearIndicator(size.width * .8, 20.0, 0.3, Colors.black26,
                  Color(0xFF39baff))),
        ],
      ),
      body: SafeArea(child: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width*.05),
        height: size.height,
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical:size.height*.02),
              child: Center(
                child: 
                Container(
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Color(0xFF39baff)
                  ),
                  child: Center(
                    child: Icon(Icons.photo_size_select_actual_outlined,
                    size: 80,
                    color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical:size.height*.02),
              child: Text("Let's help ${infoStore.childName} earn some screen time",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom:size.height*.02),
              child: Text("Let's see how ScreenCoach works by creating a quick activity for ${infoStore.childName}. When ${infoStore.childName} has completed the activity, he will earn some Screen time.",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                color: Colors.black54
              ),
              ),
            ),
            Image.asset("lib/assets/images/crossBox.png"),
            Padding(
              padding:  EdgeInsets.only(top:size.height*.04),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MoreInfo()));
                  },
                  child: CornerRoundedButton(size.width * .2, Color(0xFF39baff),
                      "Create activity", Colors.white.withOpacity(0.9), 18.0)),
            ),
          ],
        ),
      )),
    );
  }
}
