import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:serviceapp/Uploaded_report.dart';
import 'package:serviceapp/WelcomeScreen.dart';
import 'package:serviceapp/change_Password.dart';
import 'package:serviceapp/contact_us.dart';
import 'package:serviceapp/my_profile.dart';
import 'package:serviceapp/notification.dart';
import 'package:serviceapp/privacay_policy.dart';
import 'package:serviceapp/terms_and_conditions.dart';
import 'package:serviceapp/view_report.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'employee_attendance.dart';
import 'employment.dart';
import 'fileshared.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();

}

class _HomepageState extends State<Homepage> {
  List<Employer> empList = [Employer("johh", true, true)];
  String? person;

  void listAdded() {
    empList.add(Employer('', true, true));
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    person = prefs.getString('person');
  }

  @override
  Widget build(BuildContext context) {
    listAdded();
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(150.0),
              child: AppBar(
                actions: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => notification()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/hbell.png"))),
                    ),
                  )
                ],
                elevation: 0,
                backgroundColor: Colors.white70,
                title: Image.asset(
                  "assets/images/kd.png",
                  height: 180,
                  width: 150,
                ),
                centerTitle: true,
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/home1.png",
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            drawer: openDrawer(context),
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                person == 'Employee'
                    ? Container(
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
                                Padding(padding: EdgeInsets.only(top: 10)),
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
                                  style: TextStyle(color: Color(0xffFE651B)),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 8)),
                                Text(
                                  "26,jan 2022",
                                  style: TextStyle(color: Color(0xff010000)),
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
                      )
                    : Row(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EmployeeManagment()));
                                },
                                child: Image(
                                  image: AssetImage('assets/images/home3.png'),
                                  height: 150,
                                  width: 170,
                                ),
                              ),
                              Positioned(
                                  top: 85,
                                  left: 30,
                                  child: Text(
                                    'Employee \n Management',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => fileshared()));
                                },
                                child: Image(
                                  image: AssetImage('assets/images/home2.png'),
                                  height: 150,
                                  width: 170,
                                ),
                              ),
                              Positioned(
                                  top: 85,
                                  left: 30,
                                  child: Text(
                                    'File \n Management',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                        ],
                      ),
                Center(
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.95,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("All Employee List (26)",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black)),
                                          Text("20/09/2022",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black))
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                              // Radius.circular(20),
                              ),
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.42,
                              color: Colors.white,
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  child: ListView(children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Present',
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Present',
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Absent',
                                                    style: TextStyle(
                                                        color: Colors.orange),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Present',
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Present',
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Absent',
                                                    style: TextStyle(
                                                        color: Colors.orange),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Absent',
                                                    style: TextStyle(
                                                        color: Colors.orange),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Present',
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Present',
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Absent',
                                                    style: TextStyle(
                                                        color: Colors.orange),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    "assets/images/profilepic.png",
                                                    height: 60,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Johan Deo",
                                                        style: TextStyle(
                                                            color: Colors.brown,
                                                            fontSize: 14),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Text(
                                                        'Worker',
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.black),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 100,
                                                  ),
                                                  Text(
                                                    'Absent',
                                                    style: TextStyle(
                                                        color: Colors.orange),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Column(children: [
                                            Row(children: [
                                              Image.asset(
                                                "assets/images/profilepic.png",
                                                height: 60,
                                              ),
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Johan Deo",
                                                      style: TextStyle(
                                                          color: Colors.brown,
                                                          fontSize: 14),
                                                    )
                                                  ]),
                                            ]),
                                          ])
                                        ])
                                  ]))))
                    ]))
              ]),
            )));
  }
  Widget openDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.brown,
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile()));
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/profilepic.png",
                          height: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Johan Deo",
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MyProfile()));
                                    },
                                    child: Image(
                                        image: AssetImage(
                                          'assets/Edit icon.png',
                                        ),
                                        height: 18)),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Johandeo@gmail.com',
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/home0.png",
              height: 24,
            ),
            title: Text(' Home '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          person!= "Supervisor" ? ListTile(
            leading: Image.asset(
              "assets/images/attendance.png",
              height: 24,
            ),
            title: const Text(' View Attendance '),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>View_attendance(title: '',)));
            },
          ):ListTile(
            leading: Image.asset(
              "assets/images/attendance.png",
              height: 24,
            ),
            title: const Text('Take Attendance '),
            onTap: () {

            },
          ),
          person!= "Supervisor" ? ListTile(
            leading: Image.asset(
              "assets/images/view.png",
              height: 24,
            ),
            title: const Text(' View Report '),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ViewReport()));
            },
          ):ListTile(
            leading: Image.asset(
              "assets/images/view.png",
              height: 24,
            ),
            title: const Text(' View received Files '),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => fileshared()));
            },
          ),
          person!= "Supervisor" ? ListTile(
            leading: Image.asset(
              "assets/images/upload.png",
              height: 24,
            ),
            title: const Text(' Uploaded Report '),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Uploaded_report()));
            },
          ): ListTile(
            leading: Image.asset(
              "assets/images/employee.png",
              height: 24,
            ),
            title: const Text(' Employee Management '),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmployeeManagment()));
            },
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/change.png",
              height: 24,
            ),
            title: const Text(' Change Password '),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChangePassword()));
            },
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/contact.png",
              height: 24,
            ),
            title: const Text(' Contact us '),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Faq()));
            },
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/terms.png",
              height: 24,
            ),
            title: const Text(' Terms & Conditions '),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TermsAndConditions()));
            },
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/privacy.png",
              height: 24,
            ),
            title: const Text(' Privacy Policy '),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PrivacyPolicy()));
            },
          ),
          SizedBox(
            height: 38,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(color: Colors.orange),
            child: ListTile(
              leading: Image.asset(
                "assets/images/logout.png",
                color: Colors.black54,
                height: 24,
              ),
              title: const Text(
                'LogOut',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));

              },
            ),
          )
        ],
      ),
    );
  }
}



class Employer {
  String? name;
  bool type, attendance;

  Employer(
    this.name,
    this.type,
    this.attendance,
  );
}
