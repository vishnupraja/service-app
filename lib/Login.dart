import 'package:flutter/material.dart';
import 'package:serviceapp/Otp_page.dart';
import 'package:serviceapp/SignUp.dart';
import 'package:serviceapp/forget_password.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool passenable = true;
  bool visible = false;

  bool _passwordVisible = false;
  TextEditingController EmailCtr = TextEditingController();
  TextEditingController PasswordCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
          backgroundColor: Color(0xffE9F0FF),
          appBar: AppBar(
              title: Text(
                'Login',
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
                SizedBox(
                  height: 40,
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 2.8,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(blurRadius: 1, color: Colors.grey)
                        ],
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'Login to continue',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter name';
                                  }
                                  return null;
                                },
                                controller: EmailCtr,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 10),
                                  hintText: 'Email / Mobile no.',
                                  // contentPadding: EdgeInsets.only(top: 5),
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Color(0xffF79F10),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
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
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 18,
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Container(
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter Password';
                                  }
                                  return null;
                                },
                                controller: PasswordCtr,
                                obscureText: true,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 10),

                                  hintText: 'Password',
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      // Based on passwordVisible state choose the icon
                                      _passwordVisible
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.black54,
                                    ),
                                    onPressed: () {
                                      // Update the state i.e. toggle the state of passwordVisible variable
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                  // contentPadding: EdgeInsets.only(top: 5),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Color(0xffF79F10),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black38,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black38,
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 180,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword()));
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(color: Color(0xffF79F10)),
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 60,
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
                          "Login",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print("Process data");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Otp_page()));
                    } else {
                      print('Error');
                    }

                    print("Email=========${EmailCtr.text}");
                    print("Password=========${PasswordCtr.text}");
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                // Stack(
                //  children: [
                //
                //    Image(image: AssetImage('assets/divider.png',),),
                //  ],
                //   ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xff5A55CA),
                        indent: 40,
                        endIndent: 2,
                      ),
                    ),
                    Text("Or login with"),
                    Expanded(
                      child: Divider(
                        color: Color(0xff5A55CA),
                        indent: 2,
                        endIndent: 40,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/facebook.png",
                      height: 50,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/google.png", height: 50)
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 13),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(
                                color: Color(
                                  0xffF79F10,
                                ),
                                fontSize: 15),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }
}
