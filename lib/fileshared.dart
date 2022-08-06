// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:serviceapp/notification.dart';

class fileshared extends StatefulWidget {
  const fileshared({Key? key}) : super(key: key);

  @override
  State<fileshared> createState() => _filesharedState();
}

class _filesharedState extends State<fileshared> {
  final MyFileShared = List<String>.generate(50, (i) => 'MyFile $i');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE9F0FF),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: Text(
              'File Shared',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/appbar.png'),
                      fit: BoxFit.fill)),
            ),
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => notification()));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 15),
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/hbell.png"))),
                ),
              )
            ],
            leading: InkWell(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Color(0xff8D5321),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.keyboard_arrow_left_outlined),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 20),
                    height: 49,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(25)),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            height: 9,
                            width: 9,
                            decoration: BoxDecoration(
                                color: Colors.brown.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(40)),
                            child: Icon(
                              Icons.search,
                              color: Color(0xff7B4719),
                            ),
                          ),
                          hintText: 'Search Employee ...',
                          contentPadding:
                              EdgeInsets.only(top: 5, right: 16, left: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Column(
                      children: [
                        Container(
                            height: 47,
                            width: 47,
                            decoration: BoxDecoration(
                                color: Color(0xffF79F10).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              margin: EdgeInsets.all(12),
                              child: Image.asset(
                                "assets/images/rrr.png",
                              ),
                            )),
                        Text(
                          "Select Date",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    itemCount: MyFileShared.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(10),
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        heightFactor: 1.05,
                        child: Container(
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 160, left: 58),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xff7B4719),
                                      size: 16,
                                    ),
                                    Text(
                                      "Wilson road warehouse Indore (M.P)",
                                      style: TextStyle(fontSize: 9),
                                    )
                                  ],
                                ),
                                height: 190,
                                width: 300,
                                decoration: BoxDecoration(
                                    // image: DecorationImage(
                                    //   image: AssetImage("assets/images/location.png")
                                    // ),
                                    color: Color(0xffF79F10),
                                    borderRadius: BorderRadius.circular(40)),
                              ),
                              Container(
                                height: 160,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                      bottom: 120,
                                      left: 20,
                                      top: 20,
                                    )),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 10)),
                                        Image.asset(
                                          "assets/images/people.png",
                                          height: 120,
                                          width: 100,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Johan Deo",
                                          style: TextStyle(
                                              color: Color(0xffFE651B)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 8)),
                                        Text(
                                          "26,jan 2022",
                                          style: TextStyle(
                                              color: Color(0xff010000)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Stack(
                                          children: [
                                            Image.asset(
                                              "assets/images/paper.png",
                                              height: 120,
                                              width: 100,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 33, top: 42),
                                              child: Image(
                                                image: AssetImage(
                                                  'assets/images/download.png',
                                                ),
                                                height: 30,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
