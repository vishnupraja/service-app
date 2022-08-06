import 'package:flutter/material.dart';
import 'package:serviceapp/color.dart';



class ListViews extends StatefulWidget {
  const ListViews({Key? key}) : super(key: key);

  @override
  State<ListViews> createState() => _ListViewState();
}

class _ListViewState extends State<ListViews> {
  List<dynamic> gurantees = [
    {
      'title': "list",
      'Image': "assets/images/1stwelcome.png"
    },
    {
      'title': "name",
      'Image': "assets/images/call.png"
    },
    {
      'title': "file",
      'Image': "assets/images/1stwelcome.png"
    },
    {
      'title': "builder",
      'Image': "assets/images/arrow.png"
    },
    {
      'title': "risk",
      'Image': "assets/images/3.png"
    },
    {
      'title': "list",
      'Image': "assets/images/2.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffE9F0FF),
      appBar: AppBar(
        title: Text('list'),
        centerTitle: true,
      ),
    body:ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 6,
        itemBuilder: (context , index){
          return ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),

                        child:Column(
                          children: [
                            Card(
                              elevation: 5,
                              shadowColor: Colors.red,
                              child:  Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Image.asset("${gurantees[index]["Image"]}",height :50,fit: BoxFit.fill,),

                              ),
                            ),
                            Text("${gurantees[index] ['title']}"),
                          ],
                        )
                      ),

                    ],
                  ),
                ],
              )
            ],



          );
        }
    )
    );
  }
}
