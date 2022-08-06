import 'package:flutter/material.dart';

import 'color.dart';
import 'edit_profile.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.lightWhite2,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/appbar.png'), fit: BoxFit.fill)),
          ),

          elevation: 0,
          backgroundColor: Colors.orange,
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
            ),
          title: Center(child: Text("My Profile")),
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
        body: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 20,
              ),
              margin: EdgeInsets.only(top: 100, bottom: 200),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: []),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Full name",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Johan Deo",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mobile no.",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "222 5648 231",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Johandeo@gmail,.com",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Address",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "57, Wilson road Indore (M.P)",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Comapny",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Alphawizz Pvt Ltd.",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ID proof",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Image.asset(
                          "assets/images/idcard.png",
                          height: 40,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              top: 45,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 50,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      "assets/images/profile.png",
                      width: 300,
                      height: 150,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 40.0, left: 10, right: 10),
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/edit.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile()));
                  },
                  child: Center(
                    child: Text(
                      "Edit",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
