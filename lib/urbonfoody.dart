import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'hello.dart';

class Foody extends StatefulWidget {
  const Foody({Key? key}) : super(key: key);

  @override
  State<Foody> createState() => _FoodyState();
}

class _FoodyState extends State<Foody> {
  Widget categoriesContainer ({required String image, required String name}){
    return Column(
      children: [
       Padding(
         padding: EdgeInsets.only(top: 20),
         child:  Container(
           height: 120,
           width: 130,
           decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               image: DecorationImage(
                   fit: BoxFit.cover,
                   image:AssetImage(
                     image,
                   )
               )
           ),
         ),
       ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 0.8,
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
              padding: EdgeInsets.all(15),
              child: Image.asset(
                "assets/images/drawerpnh.png",
              )),
          actions: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/images/notification.png",
                        height: 10,
                      ),
                    )))
          ],
          backgroundColor: Color(0xff202442),
          centerTitle: true,
        ),

      body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bb.png"),
                    fit: BoxFit.cover,
                  )
              ),
              child:ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "search",
                            contentPadding: EdgeInsets.only(left: 10,right: 16,top: 10),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                          ),

                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Shop By Category",style: TextStyle(color: Colors.white),) ,
                        InkWell(
                          child: Text("View All",style: TextStyle(color: Colors.red),),
                          onTap: ()  {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>heloo()));
                          },
                        )


                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            categoriesContainer(image: "assets/images/chiken5.png", name: "chiken"),
                            categoriesContainer(image: "assets/images/chiken5.png", name: "chiken"),
                            categoriesContainer(image: "assets/images/chiken5.png", name: "chiken"),
                            categoriesContainer(image: "assets/images/chiken5.png", name: "chiken"),
                            categoriesContainer(image: "assets/images/chiken5.png", name: "chiken"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CarouselSlider(
                        items: [
                          Padding(
                            padding: EdgeInsets.only(left: 5,right: 5),
                            child: Image.asset(
                              'assets/images/50%.png',
                              height: 250,
                              width: 330,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5,right: 5),
                            child: Image.asset(
                              'assets/images/50%.png',
                              height: 250,
                              width: 330,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5,right: 5),
                            child: Image.asset(
                              'assets/images/50%.png',
                              height: 250,
                              width: 330,
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          height: 180.0,
                          enlargeCenterPage: true,
                          aspectRatio: 18 /9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction:1,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Image.asset("assets/images/chik.png",
                        width: MediaQuery.of(context).size.width,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                              ),
                            child: Column(
                              children: [
                             Stack(
                               children: [
                                 Padding(
                                   padding: EdgeInsets.all(5),
                                   child:  Image.asset("assets/images/chiken123.png",height: 100,),
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Image.asset("assets/images/off.png",height: 40,),
                                     Image.asset("assets/images/on.png",height: 35,),
                                   ],
                                 )
                               ],
                             ),
                                Text("450"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Fresh Meat",style: TextStyle(color: Colors.white),),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 120,
                                 decoration: BoxDecoration(
                                   color: Colors.red,
                                   borderRadius: BorderRadius.circular(30),
                                 ),
                                  child: Center(
                                    child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 10),),
                                  )
                                )

                              ],
                            ),
                            ),
                          Container(
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child:  Image.asset("assets/images/chiken123.png",height: 100,),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset("assets/images/off.png",height: 40,),
                                        Image.asset("assets/images/on.png",height: 35,),
                                      ],
                                    )
                                  ],
                                ),
                                Text("450"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Fresh Meat",style: TextStyle(color: Colors.white),),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 10),),
                                    )
                                )

                              ],
                            ),
                          ),




                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child:  Image.asset("assets/images/chiken123.png",height: 100,),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset("assets/images/off.png",height: 40,),
                                        Image.asset("assets/images/on.png",height: 35,),
                                      ],
                                    )
                                  ],
                                ),
                                Text("450"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Fresh Meat",style: TextStyle(color: Colors.white),),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 10),),
                                    )
                                )

                              ],
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5),
                                      child:  Image.asset("assets/images/chiken123.png",height: 100,),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset("assets/images/off.png",height: 40,),
                                        Image.asset("assets/images/on.png",height: 35,),
                                      ],
                                    )
                                  ],
                                ),
                                Text("450"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Fresh Meat",style: TextStyle(color: Colors.white),),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 10),),
                                    )
                                )

                              ],
                            ),
                          ),




                        ],
                      ),

                    Image.asset("assets/images/123.png",
                      width: MediaQuery.of(context).size.width,
                    ),


                    ],
                  )
                ],
              )

          ),

      );

  }
}
