import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class heloo extends StatefulWidget {
  const heloo({Key? key}) : super(key: key);

  @override
  State<heloo> createState() => _helooState();
}

class _helooState extends State<heloo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bb.png"),
            fit: BoxFit.cover,
          )
        ),
        child:ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20,),
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child:  Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Icon(Icons.arrow_back_ios,color:Colors.black,),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child:  Icon(Icons.notifications,color: Colors.white,),
                      )
                    ],
                  ),
                ),
                Image.asset("assets/images/Urbanfoody.png",height: 80),
                Divider(
                  color: Colors.white54,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.green,
                            ),
                            child:Center(
                              child:  Text("1 Months",style: TextStyle(color: Colors.white),),
                            )
                        ),
                        Text('\u{20B9} 300',style: TextStyle(color: Colors.white60),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("3 Months",style: TextStyle(color: Colors.white60),),
                        Text('\u{20B9} 900',style: TextStyle(color: Colors.white60),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("6 Months",style: TextStyle(color: Colors.white60),),
                        Text('\u{20B9} 1800',style: TextStyle(color: Colors.white60),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("1 Year",style: TextStyle(color: Colors.white60),),
                        Text('\u{20B9} 3600',style: TextStyle(color: Colors.white60),)
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white54,
                ),
                Container(
                    height: 300,
                     width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Padding(
                    padding: EdgeInsets.only(),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("1 Months Pro Membership",style: TextStyle(color: Colors.red,fontSize: 13,fontWeight: FontWeight.bold),),
                        Text("Get fast deliveries in 4 hours",style: TextStyle(color: Colors.white)),
                        Text("Get a free desert with every meal if he spends min\n 500 at participating outlets",style: TextStyle(color: Colors.white24,fontSize: 10)),
                        Text("Yearly charge of INR 150 / customer",style: TextStyle(color: Colors.white)),
                        Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                             Padding(
                               padding: EdgeInsets.only(top: 5),
                               child:  Text("Join Pro",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500)),
                             ),
                              Text("At 300 For 1 Months",style: TextStyle(color: Colors.white,fontSize: 10)),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ),
               Padding(
                 padding: EdgeInsets.only(right: 100,top: 20),
                 child:  Text("Benefits Of Pro Membership",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w800)),
               ),
                  CarouselSlider(
                    items: [
                      Padding(
                        padding: EdgeInsets.only(left: 5,right: 6),
                        child:  Image.asset("assets/images/50%.png",height: 250,width: 330,) ,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5,right: 6),
                        child:  Image.asset("assets/images/50%.png",height: 250,width: 330,) ,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5,right: 6),
                        child:  Image.asset("assets/images/50%.png",height: 250,width: 330,) ,
                      ),

                    ],
                    options: CarouselOptions(
                      autoPlay: true
                    ),
                  ),
               Padding(
                 padding: EdgeInsets.only(left: 10),
                 child:  Row(
                   children: [
                     Icon(Icons.panorama_vertical_select_rounded,color: Colors.white,),
                     Text("Our Terms And Conditions",style: TextStyle(color: Colors.white),)
                   ],
                 ),
               ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 500,
                  width:MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("1. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos .",style: TextStyle(fontSize: 12),),
                      Text("2. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos .",style: TextStyle(fontSize: 12),),
                      Text("3. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos .",style: TextStyle(fontSize: 12),),
                      Text("4. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos .",style: TextStyle(fontSize: 12),),
                      Text("5. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos .",style: TextStyle(fontSize: 12),),
                   ],
                  ),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
