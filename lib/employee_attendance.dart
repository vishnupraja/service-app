import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;

// void main() => runApp(new MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'dooboolab flutter calendar',
//       theme: new ThemeData(
//         primarySwatch: Colors.orange,
//       ),
//       // home: new View_attendance(title: 'Flutter Calendar Carousel Example'),
//     );
//   }
// }

class View_attendance extends StatefulWidget {
  const View_attendance({Key? key, required this.title, }) : super(key: key);
  final String title;

  @override
  _View_attendanceState createState() => new _View_attendanceState();
}

class _View_attendanceState extends State<View_attendance> {
  DateTime _currentDate = DateTime(2022, 08, 2);
  DateTime _currentDate2 = DateTime(2022, 08, 2);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2022, 08, 2));
  DateTime _targetDateTime = DateTime(2022, 08, 2);
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2022, 08, 10): [
        new Event(
          date: new DateTime(2022, 08, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2022, 08, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2022, 08, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  @override
  void initState() {
    _markedDateMap.add(
        new DateTime(2022, 08, 25),
        new Event(
          date: new DateTime(2022, 08, 25),
          title: 'Event 5',
          icon: _eventIcon,
        ));

    _markedDateMap.add(
        new DateTime(2022, 08, 10),
        new Event(
          date: new DateTime(2022, 08, 10),
          title: 'Event 4',
          icon: _eventIcon,
        ));

    _markedDateMap.addAll(new DateTime(2019, 2, 11), [
      new Event(
        date: new DateTime(2022, 08, 11),
        title: 'Event 1',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2022, 08, 11),
        title: 'Event 2',
        icon: _eventIcon,
      ),
      new Event(
        date: new DateTime(2022, 08, 11),
        title: 'Event 3',
        icon: _eventIcon,
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final _calendarCarousel = CalendarCarousel<Event>(
    //   onDayPressed: (date, events) {
    //     this.setState(() => _currentDate = date);
    //     events.forEach((event) => print(event.title));
    //   },
    //   weekendTextStyle: TextStyle(
    //     color: Colors.red,
    //   ),
    //   thisMonthDayBorderColor: Colors.grey,
    //   headerText: 'Custom Header',
    //   weekFormat: true,
    //   markedDatesMap: _markedDateMap,
    //   height: 200.0,
    //   selectedDateTime: _currentDate2,
    //   showIconBehindDayText: true,
    //   customGridViewPhysics: NeverScrollableScrollPhysics(),
    //   markedDateShowIcon: true,
    //   markedDateIconMaxShown: 2,
    //   selectedDayTextStyle: TextStyle(
    //     color: Colors.yellow,
    //   ),
    //   todayTextStyle: TextStyle(
    //     color: Colors.blue,
    //   ),
    //   markedDateIconBuilder: (event) {
    //     return event.icon ?? Icon(Icons.help_outline);
    //   },
    //   minSelectedDate: _currentDate.subtract(Duration(days: 360)),
    //   maxSelectedDate: _currentDate.add(Duration(days: 360)),
    //   todayButtonColor: Colors.transparent,
    //   todayBorderColor: Colors.green,
    //   markedDateMoreShowTotal: true,
    // );

    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.green,
      onDayPressed: (date, events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
      markedDatesMap: _markedDateMap,
      height: 420.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
          CircleBorder(side: BorderSide(color: Colors.yellow)),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );

    return SafeArea(
      child: new Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Employee Details')),

            elevation: 0,
            backgroundColor: Colors.orange,
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/appbar.png'), fit: BoxFit.fill))),
            leading: InkWell(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 20,
                width: 30,
                decoration: BoxDecoration(
                    color: Color(0xff8D5321),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(Icons.keyboard_arrow_left_outlined,size: 28,),
              ),
              onTap: () {
                Navigator.pop(context);

              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // custom icon
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 16.0),
                //   child: _calendarCarousel,
                // ),
                Container(
                  margin: EdgeInsets.only(
                    top: 30.0,
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        _currentMonth,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      )),
                      TextButton(
                        child: Text('PREV'),
                        onPressed: () {
                          setState(() {
                            _targetDateTime = DateTime(_targetDateTime.year,
                                _targetDateTime.month - 1);
                            _currentMonth =
                                DateFormat.yMMM().format(_targetDateTime);
                          });
                        },
                      ),
                      TextButton(
                        child: Text('NEXT'),
                        onPressed: () {
                          setState(() {
                            _targetDateTime = DateTime(_targetDateTime.year,
                                _targetDateTime.month + 1);
                            _currentMonth =
                                DateFormat.yMMM().format(_targetDateTime);
                          });
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  child: _calendarCarouselNoHeader,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Card(
                              color: Colors.green,
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    'P',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ), //Padding
                              ), //SizedBox
                            ), //Card
                            Row(
                              children: [
                                Text('Present'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('23'),
                                SizedBox(
                                  width: 40,
                                ),
                                Card(
                                  color: Colors.redAccent,
                                  child: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Center(
                                      child: Text(
                                        'A',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ), //Padding
                                  ), //SizedBox
                                ),
                                Text('Absent'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('15'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
