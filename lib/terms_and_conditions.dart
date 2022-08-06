// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'color.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colors.lightWhite2,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/appbar.png'),
                    fit: BoxFit.fill)),
          ),
          elevation: 0,
          backgroundColor: Colors.orange,
          leading: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ),
          ),
          title: Center(child: Text("Terms & Conditions")),
          actions: [
            InkWell(
              // onTap: (){
              //   Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));
              // },
              child: Image.asset(
                "assets/images/notification.png",
                width: 24,
                height: 24,
              ),
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Terms And Conditions",
                style:
                    TextStyle(color: colors.primary, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: colors.whiteTemp,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Lorem ipsum dolor sit amet, consetetur"
                    " sadipscing elitr, sed diam nonumy eirmod "
                    "tempor invidunt ut labore et dolore magna"
                    " aliquyam erat, sed diam voluptua. "
                    "At vero eos et accusam et justo duo "
                    "dolores et ea rebum. Stet clita kasd "
                    "gubergren, no sea takimata sanctus est "
                    "Lorem ipsum dolor sit amet. Lorem ipsum "
                    "dolor sit amet, consetetur sadipscing elitr,"
                    " sed diam nonumy eirmod tempor invidunt ut"
                    " labore et dolore magna aliquyam erat, sed "
                    "diam voluptua. At vero eos et accusam et "
                    "justo duo dolores et ea rebum. Stet clita "
                    "kasd gubergren, no sea takimata sanctus est"
                    " Lorem ipsum dolor sit amet. Lorem ipsum dolor"
                    " sit amet, consetetur sadipscing elitr, sed diam"
                    " nonumy eirmod tempor invidunt ut labore et"
                    " dolore magna aliquyam erat, sed diam"
                    " voluptua. At vero eos et accusam et"
                    " justo duo dolores et ea rebum. Stet "
                    "clita kasd gubergren, no sea takimata "
                    "sanctus est Lorem ipsum dolor sit amet. "
                    "Lorem ipsum dolor sit amet, consetetur"
                    " sadipscing elitr, sed diam nonumy eirmod"
                    " tempor invidunt ut labore et dolore magna "
                    "aliquyam erat, sed diam voluptua. At vero eos et "
                    "accusam et justo duo dolores et ea rebum. Stet "
                    "clita kasd gubergren, no sea takimata sanctus est"
                    " Lorem ipsum dolor sit amet. Lorem ipsum dolor sit "
                    "amet, consetetur sadipscing elitr, sed diam nonumy "
                    "eirmod tempor invidunt ut labore et dolore magna "
                    "aliquyam erat, sed diam voluptua. At vero eos et "
                    "accusam et justo duo dolores et ea rebum. Stet"
                    " clita kasd gubergren, no sea takimata sanctus"
                    " est Lorem ipsum dolor sit amet. Lorem ipsum dolor "
                    "sit amet, consetetur sadipscing elitr, sed diam "
                    "justo duo dolores et ea rebum"
                    "amet, consetetur sadipscing elitr, sed diam nonumy "
                    "eirmod tempor invidunt ut labore et dolore magna "
                    "aliquyam erat, sed diam voluptua. At vero eos et "
                    "accusam et justo duo dolores et ea rebum. Stet"
                    " clita kasd gubergren, no sea takimata sanctus"
                    " est Lorem ipsum dolor sit amet. Lorem ipsum dolor "
                    "sit amet, consetetur sadipscing elitr, sed diam "),
              ),
            )
          ],
        ),
      ),
    );
  }
}
