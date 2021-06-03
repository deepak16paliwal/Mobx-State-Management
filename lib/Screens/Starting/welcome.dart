import 'package:flutter/material.dart';
import 'package:welcome/Components/cornerRoundButton.dart';
import 'package:welcome/Components/linearProgressIndicator.dart';
import 'package:welcome/Screens/Info/info.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
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
            padding:  EdgeInsets.symmetric(horizontal: size.width*.05),
            child:LinearIndicator(size.width*.8,20.0,0.2,Colors.black12,Color(0xFF6cbd3c))
          ),
        ],
      ),
      body: Container(
        height: size.height,
        margin: EdgeInsets.symmetric(horizontal: size.width*.05),
        child: ListView(
          children: [
            Padding(
              padding:  EdgeInsets.only(top:size.height*.12),
              child: Text("Welcome Super Parent!",
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                letterSpacing: .5
              ),
              ),
            ),            
            Padding(
              padding:  EdgeInsets.only(top:size.height*.02,bottom: size.height*.04),
              child: Image.asset("lib/assets/images/owl2.jpg",
              height: 150,
              width: 150,
              ),
            ),
            Text("Ever wondered if there was a way to manage\nyour kids screen time, while rewarding good\nwork? I'm Jerry and i'm here to help you start\nyour journey with ScreenCoach",
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              height: 1.8,
              color: Color(0xFF0b0b0b).withOpacity(0.7)
            ),
            ),
            Padding(
              padding: EdgeInsets.only(top:size.height*.05),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InfoForm() ));
                },
                child: CornerRoundedButton(size.width*.15,Color(0xFF6cbd3d),"LETS GET STARTED",Colors.white.withOpacity(0.9),18.0)),
            ),

          ],
        ),
      ),
    );
  }
}
