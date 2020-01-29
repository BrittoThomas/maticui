import 'package:flutter/material.dart';

class SingleBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey[50],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Text('PROMO CODE'),
            ),
            FlatButton(
              child: Text(
                'Add New',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18
                ),
              ),
              onPressed: (){

              },
            )
          ],
        ),
      ),
      body:
      Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.cyan,
                          Colors.teal
                        ]
                    )
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.error_outline,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10,),
                    Flexible(
                      child: Text(
                        'Please remember, that you are required by our Terms and Conditions to have a female present at home.\n\nThe arrival window is 2 hours, SP can arrive 1 hour before the selected visit time and up to 1 hour after.',
                          softWrap: true
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 20,),
                  Text('Schedule Cleaning',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 15,
                        height: 15,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text('Weekly Cleaning',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.info,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(color: Colors.white,),
                  SizedBox(height: 10,),
                  Text('1 CLEANER',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2.0, // has the effect of softening the shadow
                          spreadRadius: 2.0, // has the effect of extending the shadow
                          offset: Offset(
                            0,
                            2.0,
                          ),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text('January / February',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 20,),
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Sat'),
                                Text('Sun'),
                                Text('Mon'),
                                Text('Tue'),
                                Text('Wed'),
                                Text('Thu'),
                                Text('Fri'),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('25'),
                                Text('26'),
                                Text('27'),
                                Text('28'),
                                Text('29'),
                                Text('30'),
                                Text('31'),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('1'),
                                Text('2'),
                                Text('3'),
                                Text('4'),
                                Text('5'),
                                Text('6'),
                                Text('7'),
                              ],
                            ),

                          ],
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
