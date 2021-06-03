import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Avail extends StatefulWidget {
  Avail({Key? key}) : super(key: key);

  @override
  _AvailState createState() => _AvailState();
}

class _AvailState extends State<Avail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "SCREENCOACH",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white38,
            )),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/a/a0/Pierre-Person.jpg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        left: 0.0,
                        top: 10.0,
                        child: Icon(
                          Icons.circle,
                          color: Colors.red,
                          size: 10,
                        ))
                  ],
                ),
              )),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          margin: EdgeInsets.symmetric(horizontal: size.width * .03),
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _dataCard(size),
                    _dataCard(size),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _dataCard(Size size) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 3.0,
      shadowColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        width: size.width * .45,
        height: size.height * .4,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding:  EdgeInsets.only(top:size.height*.05,bottom: size.height*.001),
              child: _progressViewWithProfile(size),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 15,
                  color: Colors.grey.shade200,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text("Avail: 45 Mins",
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                  ),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical:size.height*.01),
              child: _stepsDataView(Icons.ac_unit_rounded, "44", Icons.add_alert_outlined, "3"),
            ),
            _stepsDataView(Icons.check_circle, "2/5", Icons.adb_sharp, "2.3km")
          ],
        ),
      ),
    );
  }

  Widget _stepsDataView(IconData icon1, String text1, IconData icon2, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Icon(
                  icon1,
                  size: 20,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.0),
                  child: Text("$text1",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left:10.0),
                  child: Icon(
                    icon2,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.0),
                  child: Text("$text2",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                )
      ],
    );
  }

  Widget _progressViewWithProfile(Size size) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularPercentIndicator(
          radius: size.width * .25,
          animation: true,
          animationDuration: 1200,
          lineWidth: size.width * .02,
          percent: 0.3,
          center: Container(
            height: size.width * .18,
            width: size.width * .18,
            decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(size.width * (.18 / 2))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "27",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  Text(
                    "Minutes",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: 10.0),
                  ),
                ],
              ),
            ),
          ),
          circularStrokeCap: CircularStrokeCap.butt,
          backgroundColor: Colors.grey.shade200,
          progressColor: Colors.blue.shade900,
        ),
        Positioned(
          right: 5.0,
          bottom: 0.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(size.width * (.115 / 2)),
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/a/a0/Pierre-Person.jpg",
              height: size.width * .115,
              width: size.width * .115,
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}
