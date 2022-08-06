import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:serviceapp/SignUp.dart';

class Otp_page extends StatefulWidget {
  const Otp_page({Key? key}) : super(key: key);

  @override
  State<Otp_page> createState() => _Otp_pageState();
}

class _Otp_pageState extends State<Otp_page> {
  OtpFieldController otpController = OtpFieldController();
  late String pinCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9F0FF),
        appBar: AppBar(
            title: Text(
              'OTP',
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
                    'assets/otpemage.png',
                    height: 150,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Verify OTP !',
                style: TextStyle(
                    fontSize: 21,
                    color: Color(0xffF79F10),
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text('Enter 4 digit OTP number sent to your mobile no.',
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 30,
              ),
              OTPTextField(
                controller: otpController,
                length: 4,
                keyboardType: TextInputType.number,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceEvenly,
                fieldWidth: 50,
                contentPadding: EdgeInsets.all(11),
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                obscureText: true,
                otpFieldStyle: OtpFieldStyle(
                    backgroundColor: Color(0xffFFFFFF),
                    disabledBorderColor: Colors.white
                    // borderColor: Colors.black87,
                    // enabledBorderColor: Colors.black87,
                    // focusBorderColor: Colors.white),
                    ),
                style: TextStyle(fontSize: 17, height: 2.2),
                onChanged: (pin) {
                  print("Changed: " + pin);

                  pinCode = pin;
                },
                onCompleted: (pin) {
                  if (pin.isNotEmpty) {
                    print("Completed: " + pin);
                  } else {}
                },
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(20),

                  height:60,
                  width: 380,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/edit.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Verify",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  if (pinCode.isEmpty || pinCode.length != 4) {
                    Fluttertoast.showToast(
                        msg: "Please fill all field",
                        backgroundColor: Colors.orange.shade500);
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ));
                    print("OTP==========${otpController}");
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 250, top: 8),
                child: Text(
                  '01:20 sec',
                  style: TextStyle(color: Color(0xffF79F10), fontSize: 12),
                ),
              ),
              Text(
                'RESEND',
                style: TextStyle(color: Color(0xff5A55CA), fontSize: 15),
              ),
              Divider(
                color: Color(0xffFF3148),
                height: 4,
                thickness: 2,
                endIndent: 148,
                indent: 148,
              )
            ],
          ),
        ));
  }
}
