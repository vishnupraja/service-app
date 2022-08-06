// import 'package:flutter/cupertino.dart';
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:serviceapp/WelcomeScreen.dart';
import 'package:serviceapp/homesceen%20(1).dart';

// import 'app_drawer.dart';
import 'color.dart';
// import 'welcome_screen.dart';

class Introslider extends StatefulWidget {
  const Introslider({Key? key}) : super(key: key);

  @override
  State<Introslider> createState() => _IntrosliderState();
}

class _IntrosliderState extends State<Introslider> {
  PageController? _pageController;
  int currentIndex = 0;

  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  nextFunction() {
    _pageController?.nextPage(duration: _kDuration, curve: _kCurve);
    if (currentIndex == 2) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    }
  }

  onChangedFunction(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.grad1Color,
        body: Stack(
          children: [
            Image.asset(
              "assets/background.png",
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            PageView(
              onPageChanged: onChangedFunction,
              controller: _pageController,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 100),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/onboarding1.png",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "Manage and create your team to get job done",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.7,
                                // fontWeight: FontWeigh,
                                color: colors.black54),
                          ),
                        ),
                        Positioned(
                            // right: 30,top: 10,
                            child: Padding(
                          padding: const EdgeInsets.only(left: 200, top: 62),
                          child: Row(
                            children: [
                              Text(
                                "Next",
                                style: TextStyle(fontSize: 18),
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    "assets/getstarted.png",
                                    height: 70,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 23, top: 23),
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 100),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/onboarding2.png",
                          ),
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Container(
                          child: Text(
                            "Get connected with team and stay updated",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.7,
                                // fontWeight: FontWeigh,
                                color: colors.black54),
                          ),
                        ),
                        Positioned(
                            right: 30,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 200, top: 74),
                              child: Row(
                                children: [
                                  Text(
                                    "Next",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset(
                                        "assets/getstarted.png",
                                        height: 70,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 23, top: 23),
                                        child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 100),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/onboarding3.png",
                          ),
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            "Track your work & get desired result",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.7,
                                // fontWeight: FontWeigh,
                                color: colors.black54),
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WelcomeScreen(),
                                      ));
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 135, top: 95),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Get started",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Stack(
                                        children: [
                                          Image.asset(
                                            "assets/getstarted.png",
                                            height: 70,
                                          ),
                                          Positioned(
                                              left: 24,
                                              top: 23,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.white,
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            currentIndex == 2
                ? SizedBox.shrink()
                : Positioned(
                    top: 65,
                    right: 15,
                    child: Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()));
                          },
                          child: Text(
                            "Skip",
                            style: TextStyle(
                                color: Color(0xff7B4719),
                                decoration: TextDecoration.underline,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
            Positioned(
              bottom: 200,
              left: 145,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[],
              ),
            ),
            Positioned(
              bottom: 60,
              child: Container(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                        onTap: () => nextFunction(),
                        child: Container(
                          height: 60,
                          width: 60,
                          child: currentIndex == 0
                              ? Image.asset("assets/1.png")
                              : currentIndex == 1
                                  ? Image.asset("assets/2.png")
                                  : Image.asset("assets/3.png"),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget Pages({images, reverse = false, pageIndex}) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              !reverse
                  ? Container(
                      child: Image.asset(
                        images,
                        height: 500,
                        width: 500,
                      ),
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width,
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  int? positionIndex, currentIndex;

  Indicator({this.currentIndex, this.positionIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: currentIndex == positionIndex ? 20 : 10,
      decoration: BoxDecoration(
        color: positionIndex == currentIndex ? colors.secondary : Colors.grey,
      ),
    );
  }
}
