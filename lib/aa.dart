import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String dropdownValue = 'Indore';
  Widget categoriesContainer({required String image, required String name}) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  image,
                ),
              ),
              borderRadius: BorderRadius.circular(30),
            )),
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff202442),
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            child: Image(
              image: AssetImage(
                'images/homeicon.png',
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
                height: 30,
                width: 35,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                // color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Placeholder()));
                    },
                    child: Image(
                      image: AssetImage('images/notificationicon1.png'),
                    ),
                  ),
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover,
                  )),
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // DropdownButton<String>(
                    //   value: dropdownValue,
                    //   icon: const Icon(Icons.location_on, color: Colors.white),
                    //   style: const TextStyle(color: Colors.white),
                    //   underline: Container(
                    //     height: 1,
                    //     color: Colors.white,
                    //   ),
                    //   dropdownColor: Colors.white.withOpacity(0.5),
                    //   onChanged: (String? newValue) {
                    //     setState(() {
                    //       dropdownValue = newValue!;
                    //     });
                    //   },
                    //   items: <String>['indore', 'Mumbai', 'Dewas', 'Bhopal']
                    //       .map<DropdownMenuItem<String>>((String value) {
                    //     return DropdownMenuItem<String>(
                    //       value: value,
                    //       child: Text(value),
                    //     );
                    //   }).toList(),
                    // ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 27, top: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                    child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon:
                          Icon(Icons.search_rounded, color: Colors.black),
                          border: InputBorder.none,
                          labelText: 'Search Your Product here',
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Shop By Category',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Color(0xffFF3148),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      categoriesContainer(
                          image: 'images/meet1.png', name: 'Chicken'),
                      categoriesContainer(
                          image: 'images/meet2.png', name: 'Fish & Seafood'),
                      categoriesContainer(
                          image: 'images/meet4.png', name: 'Mutton'),
                      categoriesContainer(
                          image: 'images/meet1.png', name: 'Eggs'),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/meeet1.png',
                          height: 250,
                          width: 330,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/meeet2.png',
                          height: 250,
                          width: 330,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/meeet1.png',
                          height: 250,
                          width: 330,
                        )
                        // Image.asset('images/meeet4.png',height: 30,width: 30,),
                      ],
                    ),
                  ),
                ),
                Image(image: AssetImage('images/joinnow.png')),
                Padding(
                  padding: const EdgeInsets.only(right: 170, top: 18),
                  child: Text(
                    'Offers For You',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Container(
                  height: 142,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('images/meet1.png'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Image(
                          image: AssetImage('images/meet1.png'),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
