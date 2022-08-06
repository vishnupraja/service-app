import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:serviceapp/notification.dart';

class Uploaded_report extends StatefulWidget {
  const Uploaded_report({Key? key}) : super(key: key);

  @override
  State<Uploaded_report> createState() => _Uploaded_reportState();
}

class _Uploaded_reportState extends State<Uploaded_report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9F0FF),
      appBar: AppBar(
          elevation: 0,
          title: Text(
            'Uploaded report',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/appbar.png'), fit: BoxFit.fill)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>notification()));
                },
                child: Container(
                    margin: EdgeInsets.all(15),
                    child: Image(
                        image: AssetImage(
                      'assets/images/hbell.png',
                    ))),
              ),
            ),
          ],
          leading: InkWell(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                  color: Color(0xff8D5321),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.keyboard_arrow_left_outlined,
                size: 28,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              shrinkWrap: true,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey)],
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                                child: Image(
                              image: AssetImage('assets/r_avatar.png'),
                              height: 100,
                              width: 120,
                            )),
                          ),
                          Stack(
                            children: [
                              // Image(image: AssetImage('assets/r_file.png')),
                              Image(
                                image: AssetImage('assets/r_dott.png'),
                                height: 150,
                                width: 170,
                              ),

                              Positioned(
                                  top: 49,
                                  left: 45,
                                  child: Image(
                                    image: AssetImage('assets/r_file.png'),
                                    height: 50,
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        '------------------------------------',
                        style: TextStyle(
                          fontSize: 29,
                          color: Colors.black12,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 18, right: 18, top: 2),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'required Name*.';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            // controller: FullNameCtr,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              contentPadding: EdgeInsets.all(18),
                              hintText: 'Supervisor mobile number*',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: const Icon(
                                  Icons.person,
                                  color: Color(0xffF79F10),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 18, right: 18, top: 2),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'required Name*.';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            // controller: FullNameCtr,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              contentPadding: EdgeInsets.all(18),
                              hintText: 'Enter location*',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: const Icon(
                                  Icons.location_on,
                                  color: Color(0xffF79F10),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Row(
                          children: [
                            Text(
                              'Use My Current Location',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 11),
                            ),
                            Icon(
                              Icons.my_location_sharp,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 18, right: 18, top: 2),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'required Name*.';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.text,
                            // controller: FullNameCtr,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              contentPadding: EdgeInsets.all(18),
                              hintText: 'Enter Date',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: const Icon(
                                  Icons.date_range,
                                  color: Color(0xffF79F10),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black38,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xff8D5321),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )),
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            //this right here
                            child: Container(
                                height: 350,
                                width: 420,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 12,
                                      right: 12,
                                    ),
                                    child: Column(
                                        // mainAxisAlignment:
                                        // MainAxisAlignment
                                        //     .center,
                                        // crossAxisAlignment:
                                        // CrossAxisAlignment
                                        //     .center,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            // width: 50,
                                            alignment: Alignment.topRight,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Icon(Icons.close),
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/Upload_Pop_Up_Image.png',
                                            height: 140,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                                'Report uploaded successfully',
                                                style: TextStyle(
                                                    color: Colors.black38)),
                                          ),
                                          Column(
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 45,
                                                width: 190,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: Color(0xffF79F10)),
                                                child: Center(
                                                  child: Text(
                                                    "View report",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              InkWell(
                                                child: Container(
                                                  height: 45,
                                                  width: 190,
                                                  child: DottedBorder(
                                                      borderType:
                                                          BorderType.RRect,
                                                      radius:
                                                          Radius.circular(20),
                                                      child: Center(
                                                        child: Text(
                                                            'Add more report'),
                                                      )),
                                                ),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                              )
                                            ],
                                          )
                                        ]))));
                      });
                })
          ],
        ),
      ),
    );
  }
}
