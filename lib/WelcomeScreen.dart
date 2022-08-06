import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Image.asset(
          "assets/backwelcome.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Center(
                child: Image.asset(
                  "assets/1stwelcome.png",
                  height: 70,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'KD ASSOCIATE & Co.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                'assets/2ndwelcome.png',
                height: 200,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Select your role',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              child:Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 66,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/edit.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Employee",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                setState(() {
                  prefs.setString('person', "Employee");

                });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginScreen()));
              },
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'Supervisor',
                      style: TextStyle(
                        fontSize: 15,
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  )),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                setState(() {
                  prefs.setString('person', "Supervisor");
                });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginScreen()));
              },
            )
          ],
        )
      ]),
    ));
  }
}
