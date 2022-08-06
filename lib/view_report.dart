import 'package:flutter/material.dart';

import 'notification.dart';

class ViewReport extends StatefulWidget {
  const ViewReport({Key? key}) : super(key: key);

  @override
  State<ViewReport> createState() => _ViewReportState();
}

class _ViewReportState extends State<ViewReport> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffE9F0FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text(
            'View report',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/appbar.png'), fit: BoxFit.fill)),
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
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("Upload report list (26)"),
                SizedBox(
                  width: 35,
                ),
                Text("Select Date"),
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
              ],
            ),
            Expanded(
              child: ListView.builder(
                  physics: ScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Container(
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                top: 160,
                                left: 58,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0),
                              child: Container(
                                height: 230,
                                width: 290,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                    )),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                          bottom: 120,
                                          left: 10,
                                          top: 20,
                                        )),
                                        Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/people.png",
                                              height: 130,
                                              width: 130,
                                            ),
                                            Text(
                                              "Selfie",
                                              style: TextStyle(
                                                  color: Color(0xffFE651B)),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          children: [
                                            Stack(
                                              children: [

                                                Image.asset(
                                                  "assets/images/paper.png",
                                                  height: 130,
                                                  width: 130,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Uploaded File",
                                              style: TextStyle(
                                                  color: Color(0xffFE651B)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 36.0, top: 20),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.orange,
                                            size: 16,
                                          ),
                                          Text(
                                            "Wilson road warehouse Indore (M.P)",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.brown),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 26.0, top: 10),
                              child: Column(
                                children: [
                                  Text(
                                    "26, Jan 2022",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
