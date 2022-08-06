import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  String? person1;
  @override
  void initState(){
    super.initState();
    print("object");
    getdata();
  }
  getdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      person1 = prefs.getString('person');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
          child: Text(
        'A drawer is an invisible side screen.',
        style: TextStyle(fontSize: 20.0),
      )),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.brown),
                accountName: Text(
                  "Johan Deo",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("Johandeo@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/home.png",
                height: 24,
              ),
              title: Text(' Home '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          person1!= "Supervisor" ? ListTile(
              leading: Image.asset(
                "assets/images/attendance.png",
                height: 24,
              ),
              title: const Text(' Take Attendance '),
              onTap: () {
                Navigator.pop(context);
              },
            ):ListTile(
            leading: Image.asset(
              "assets/images/attendance.png",
              height: 24,
            ),
            title: const Text('View Attendance '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
            ListTile(
              leading: Image.asset(
                "assets/images/view.png",
                height: 24,
              ),
              title: const Text(' View received Files '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/employee.png",
                height: 24,
              ),
              title: const Text(' Employee Management '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/change.png",
                height: 24,
              ),
              title: const Text(' Change Password '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/contact.png",
                height: 24,
              ),
              title: const Text(' Contact us '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/terms.png",
                height: 24,
              ),
              title: const Text(' Terms & Conditions '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Image.asset(
                "assets/images/privacy.png",
                height: 24,
              ),
              title: const Text(' Privacy Policy '),
              onTap: () {
                Navigator.pop(context);
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
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ), //Deawer
    );
  }
}
