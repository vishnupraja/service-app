import 'package:flutter/material.dart';
import 'package:serviceapp/change_Password.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController EmailCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9F0FF),
        appBar: AppBar(
            title: Text(
              'Forgot Pasword',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/appbar.png'),
                      fit: BoxFit.fill)),
            ),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Image.asset(
                    "assets/forgetpasswordimage.png",
                    height: 150,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 4.2,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Color(0xff00000029))
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12,
                          top: 30,
                        ),
                        child: Text(
                          "Enter the Email ID/ Mobile no. associated with your\n "
                          "account we will send you a link & PIN to reset your\n "
                          "password",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, top: 20),
                        child: Container(
                          height: 60,
                          width: 300,
                          child: TextField(
                            controller: EmailCtr,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: 'Email / Mobile no.',
                                contentPadding: EdgeInsets.only(
                                    top: 5, right: 16, left: 15),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xffF79F10),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: DecorationImage(
                          image: AssetImage('assets/button_image.png'),
                          fit: BoxFit.fill)),
                  child: Center(
                    child: Text(
                      'Send',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                onTap: () {
                  print(EmailCtr.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangePassword()));
                },
              )
            ],
          ),
        ));
  }
}
