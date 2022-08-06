import 'package:flutter/material.dart';
// import 'package:serviceapp/notification.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController NewPasswordCtr = TextEditingController();
  TextEditingController OldPasswordCtr = TextEditingController();
  TextEditingController ConfirmPasswordCtr = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9F0FF),
      appBar: AppBar(
          title: Text(
            'Change Password',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/appbar.png'), fit: BoxFit.fill)),
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
      body:SingleChildScrollView(
        child:  Column(
          children: [
            Center(
              child:  Container(
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height/2.5,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(blurRadius: 10, color: Color(0xff00000029))
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15,right: 15,),
                      height: 50,
                      child: TextField(
                        controller: OldPasswordCtr,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Enter Your Old Password',
                            hintStyle: TextStyle(fontSize: 13),
                            contentPadding: EdgeInsets.only(top: 5,right: 16),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xffF79F10),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(50))),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15,right: 15,),
                      height: 50,
                      child: TextField(
                        obscureText: _isObscure,
                        controller: NewPasswordCtr,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Enter New Password',
                            hintStyle: TextStyle(fontSize: 13,),
                            contentPadding: EdgeInsets.only(top: 5,right: 16),
                            suffixIcon: IconButton(
                                icon: Icon(
                                    _isObscure ?  Icons.visibility_off :  Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xffF79F10),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(50))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child:  Text("Your New Password must be Different From Your\n"
                          " Previous Passwords.",style: TextStyle(fontSize: 11,color: Colors.red),),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15,right: 15,),
                      height: 50,
                      child: TextField(
                        obscureText: _isObscure,
                        controller: ConfirmPasswordCtr,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Confirm New Password',
                            hintStyle: TextStyle(fontSize: 13,),
                            contentPadding: EdgeInsets.only(top: 5,right: 16),
                            suffixIcon: IconButton(
                                icon: Icon(
                                    _isObscure ?  Icons.visibility_off :  Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xffF79F10),
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.circular(50))),
                      ),
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(
              height: 40,
            ),
           InkWell(
             child:  Container(
               height: 60,
               width: MediaQuery.of(context).size.width/1.1,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                   image: DecorationImage(
                       image: AssetImage('assets/button_image.png'),
                       fit: BoxFit.fill
                   )
               ),
               child: Center(
                 child: Text('Save',style: TextStyle(color: Colors.white),),
               ),
             ),
             onTap: () {
               print(NewPasswordCtr.text);
               print(OldPasswordCtr.text);
               print(ConfirmPasswordCtr.text);
               // Navigator.push(context, MaterialPageRoute(builder: (context) =>notification()));
             },
           )
          ],
        ),
      )
      );

  }
}
