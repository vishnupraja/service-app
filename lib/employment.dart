import 'package:flutter/material.dart';
import 'package:serviceapp/Addemploye.dart';
import 'package:serviceapp/notification.dart';

import 'employee_details.dart';

class EmployeeManagment extends StatefulWidget {
  const EmployeeManagment({Key? key}) : super(key: key);

  @override
  State<EmployeeManagment> createState() => _EmployeeManagmentState();
}

class _EmployeeManagmentState extends State<EmployeeManagment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffE9F0FF),
      appBar: AppBar(
          title: Text(
            'Employee Management',
            style: TextStyle(color: Colors.white, fontSize: 15),
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
      body: Column(
        children: [


          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                height: 49,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Container(
                        margin: EdgeInsets.all(4),
                        height: 7,
                        width: 7,
                        decoration: BoxDecoration(
                            color: Colors.brown.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.search,
                          color: Color(0xff7B4719),
                        ),
                      ),
                      hintText: 'Search Employee ...',
                      contentPadding:
                      EdgeInsets.only(top: 5, right: 16, left: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddEmployee()));
                    },
                    child: Image.asset(
                      'assets/images/employ2.png',
                      height: 50,
                    ),
                  ),
                  Text(
                    'Add Employee',
                    style: TextStyle(fontSize: 9),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 190),
            child: Text('Total Employee : 25'),
          ),
          Expanded(
            // height:MediaQuery.of(context).size.height/1,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text("Johan Deo"),
                      subtitle: Text(("Worker")),
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        backgroundImage:
                        AssetImage("assets/images/profile.png"),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => EmployeeDetails()));
                            },
                            child: Icon(
                              Icons.remove_red_eye_outlined,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                              child: Icon(
                                Icons.delete,
                              ),
                              onTap: () {
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(20.0)),
                                        //this right here
                                        child: Container(
                                          height: 300,
                                          width: 420,
                                          child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 12,
                                                right: 12,
                                              ),
                                              child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      // width: 50,
                                                      alignment:
                                                      Alignment.topRight,
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child:
                                                        Icon(Icons.close),
                                                      ),
                                                    ),
                                                    Image.asset(
                                                      'assets/deleteemp3.png',
                                                      height: 140,
                                                    ),
                                                    Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                            top: 10),
                                                        child: Column(
                                                          children: [
                                                            Text('Are you sure you want to delete',style: TextStyle(
                                                                color: Colors
                                                                    .black38)),
                                                            Center(child:  Text("your employee"   ,

                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black38)
                                                            ),)
                                                          ],
                                                        )
                                                    ) ,

                                                    InkWell(
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:1, right: 35),
                                                          child:Padding(
                                                            padding: EdgeInsets.only(left: 30,top: 20),
                                                            child:  Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                Expanded(
                                                                  child:  Container(
                                                                    height: 45,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                        BorderRadius.circular(30),
                                                                        color: Color(0xff09AD8B)),
                                                                    child: Center(
                                                                      child: Text(
                                                                        "Yes",
                                                                        style: TextStyle(
                                                                            color: Colors.white),
                                                                      ),
                                                                    ),
                                                                  ),

                                                                ),
                                                                SizedBox(
                                                                  width: 20,
                                                                ),
                                                                Expanded(
                                                                  child:   Container(
                                                                    height: 45,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                        BorderRadius.circular(30),
                                                                        color: Color(0xffFE3D02)),
                                                                    child: Center(
                                                                      child: Text(
                                                                        "No",
                                                                        style: TextStyle(
                                                                            color: Colors.white),
                                                                      ),
                                                                    ),

                                                                  ),
                                                                )


                                                              ],
                                                            ),
                                                          )
                                                      ),
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                    )
                                                  ])),

                                        ));
                                  },
                                );
                              })
                        ],
                      ));
                }),
          )
        ],
      ),
    );
  }
}

