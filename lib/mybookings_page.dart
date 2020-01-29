import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBookingsPage extends StatefulWidget {

  @override
  _MyBookingsPageState createState() =>
      _MyBookingsPageState();
}

class _MyBookingsPageState extends State<MyBookingsPage> {

  int sharedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'My Bookings',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        body: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            SizedBox(height: 32,),
            CupertinoSegmentedControl<int>(
              children: {
                0: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                      'Upcoming',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                1: Text(
                    'History',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              },
              onValueChanged: (int val) {
                setState(() {
                  sharedValue = val;
                });
              },
              groupValue: sharedValue,
            ),
            SizedBox(height: 30,),
            sharedValue == 0 ? MyBookingListPlaceholderWidget(title: 'NEXT 30 DAYS VISITS',) : MyBookingListPlaceholderWidget(title: 'PREVIOUS VISITS',),
          ],
        ),
      );
  }
}

class MyBookingListPlaceholderWidget extends StatelessWidget {

  const MyBookingListPlaceholderWidget({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: double.maxFinite,
      height: 400,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: Colors.grey,
          ),),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: CircleAvatar(
                backgroundColor: Colors.white60,
                radius: 100,
                  child: Image(
                    image: AssetImage('images/list.png'),
                  )
              ),
            ),
          ),
          Text('You don\'t have any bookings yet.',
          textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            padding: EdgeInsets.all(15),
            color: Colors.blue,
            child: Text(
              'Schedule cleaning',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            onPressed: (){

            },
          )
        ],
      ),
    );
  }
}
