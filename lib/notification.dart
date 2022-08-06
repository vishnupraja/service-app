import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9F0FF),
        appBar: AppBar(
            title: Text(
              'Notification',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/appbar.png'),
                      fit: BoxFit.fill)),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 15),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/AppBar_icon.png"))),
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
        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      // padding: EdgeInsets.all(),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: ListTile(
                          leading: Image.asset(
                            "assets/N_1st.png",
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            'Johan Deo',
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            children: [
                              Text(
                                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos',
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 12),
                              ),
                              Text(
                                'Just Now',
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.black38.withOpacity(0.5),
                                    fontSize: 12),
                              ),
                            ],
                          )),
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // )
                ],
              );
            }));
  }
}
