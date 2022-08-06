

import 'package:flutter/material.dart';

import 'color.dart';
import 'edit_employee.dart';

class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({Key? key}) : super(key: key);

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
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
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ),
            title: Center(child: Text("Employee Details")),
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
                margin:
                    EdgeInsets.only(top: 100, bottom: 110, left: 17, right: 17),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: []),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        height: 10,
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
                        height: 10,
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
                        height: 10,
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
                        height: 10,
                      ),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Designation",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Worker",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date of joining",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "26, jan 2022",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gender",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                      SizedBox(
                        height: 20,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 70),
                      Text(
                        "View attendance details",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepOrange.shade800,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(height: 14,),
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
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditEmployee()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20.0, left: 13, right: 13),
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
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditEmployee()));
                      },
                      child: Center(
                        child: Text(
                          "Edit Employee",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Container(
              //   height: 30,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(30), color: Colors.grey),
              // )
            ],
          )),
    );
  }
}
