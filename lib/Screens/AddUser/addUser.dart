import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:welcome/Mobx/userStore.dart';
import 'package:welcome/Screens/Avail/avail.dart';

class AddUser extends StatefulWidget {
  AddUser({Key? key}) : super(key: key);

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final userStore = Provider.of<UserStore>(context);
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
          child: ListView(
            // physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Add User",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Let's get started. All you need to do is add one or two family members.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Observer(
                  builder: (_) => TextField(
                    onChanged: (value) {
                      userStore.email = value;
                    },
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Email",
                        errorText: userStore.error.email),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Observer(
                  builder: (_) => TextField(
                    onChanged: (value) {
                      userStore.name = value;
                    },
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Name",
                        errorText: userStore.error.name),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Observer(
                  builder: (_) => TextField(
                    onChanged: (value) {
                      userStore.pin = value;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Pin",
                        hintText: "Pin",
                        errorText: userStore.error.pin),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Observer(
                  builder: (_) => TextField(
                    onChanged: (value) {
                      userStore.avtarName = value;
                    },
                    decoration: InputDecoration(
                        labelText: "Avtar Name",
                        hintText: "Avtar Name",
                        errorText: userStore.error.avtarName),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width / 2 - 15,
                      child: TextFormField(
                        onChanged: (value) {
                          userStore.tokens = value;
                        },
                        keyboardType: TextInputType.number,
                        initialValue: "0",
                        decoration: InputDecoration(
                          labelText: "Tokens",
                          hintText: "Tokens",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width / 2 - 15,
                      child: TextFormField(
                        onChanged: (value) {
                          userStore.gems = value;
                        },
                        initialValue: "0",
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Gems",
                          hintText: "Gems",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: TextFormField(
                  onChanged: (value) {
                    userStore.maxToken = value;
                  },
                  initialValue: "0",
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Max token debt allowed",
                    hintText: "Max token debt allowed",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                child: Observer(
                  builder: (_) => DropdownButton<String>(
                    isExpanded: true,
                    value: userStore.profile,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 1.5,
                      color: Colors.grey[400],
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        // dropdownValue = newValue!;
                        userStore.profile = newValue!;
                      });
                    },
                    items: <String>['Profile', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userStore.validateAll();
          debugPrint("here we get the ${userStore.success}");
          if (userStore.success) {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => Avail()));
          }
        },
        backgroundColor: Colors.red,
        child: Center(
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
