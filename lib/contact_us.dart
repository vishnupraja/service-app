import 'package:flutter/material.dart';
import 'package:serviceapp/notification.dart';

import 'color.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ),
          ),
          title: Center(child: Text("Contact Us")),
          actions: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>notification()));
              },
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: colors.whiteTemp,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/call.png",
                                height: 24,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "General Support",
                                    style: TextStyle(
                                        color: colors.textColor1,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("Contactus@contractorssmart.com",
                                      style: TextStyle(
                                          color: colors.textColor, fontSize: 12)),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.03,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/website.png",
                                height: 24,
                              ),

                              // Image.asset("assets/images/users.png"),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Website",
                                    style: TextStyle(
                                        color: colors.textColor1,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("www.contractorssmart.com",
                                      style: TextStyle(
                                          color: colors.textColor, fontSize: 12)),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 14.0, right: 14.0, top: 10.0),
                      child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                              color: colors.whiteTemp,
                              borderRadius: BorderRadius.circular(10)),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.white,
                            ),
                            child: ExpansionTile(
                              onExpansionChanged: (bool expanded) {
                                setState(() => isOpen = expanded);
                              },
                              title: Text(
                                'How can I update my profile',
                                style: TextStyle(
                                    color: colors.textColor1.withOpacity(0.8)),
                              ),
                              trailing: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: colors.secondary),
                                child: Icon(
                                  isOpen ? Icons.remove : Icons.add,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              children: [
                                ListTile(
                                    title: Text(
                                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit',
                                        style: TextStyle(
                                            color: colors.textColor1
                                                .withOpacity(0.5)))),
                              ],
                            ),
                          )),
                    );
                  }),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'If you Can\'t find a solution You can Write About Your Problem and Send to us',
                  style: TextStyle(color: colors.textColor1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: colors.whiteTemp,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
                      hintText: 'Describe Your Problem here',
                      hintStyle:
                          TextStyle(color: colors.textColor1.withOpacity(0.5)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              InkWell(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
                // },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                      color: colors.secondary,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "Send",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: colors.darkColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              )
            ],
          ),
        ),
      ),
    );
  }
}
