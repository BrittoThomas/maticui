import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:matic/dot_widget.dart';
import 'package:matic/single_booking_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 0, bottom: 100),
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient:  LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.cyan,
                    Colors.teal]
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                    color: Colors.white,
                    ),
                    Text('Al Urubah Road',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                  'Al Urubah Road, As Sulimaniyah, Riyadh 12215, Saudi Arabia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      HotDealCardWidget(),
                      HotDealCardWidget(),
                      HotDealCardWidget(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DotWidget(selected:  true,),
                    DotWidget(),
                    DotWidget(),
                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(20),
            color: Colors.grey[100],
            child: FlatButton(
              padding: EdgeInsets.all(15),
              color: Colors.blue,
              child: Text(
                'Book a single visit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SingleBookingPage()));
              },
            ),
          ),
          Container(
            color: Colors.grey[100],
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('PACKAGES',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 20,),
                    PackageCardWidget(),
                    PackageCardWidget(),
                    PackageCardWidget(),
                    PackageCardWidget(),
                    PackageCardWidget(),
                    PackageCardWidget(),
                    PackageCardWidget(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HotDealCardWidget extends StatelessWidget {
  const HotDealCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Container(
          color: Colors.white,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('HOT DEALS',
                    style:  TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  Icon(
                    Icons.whatshot,
                    color: Colors.redAccent,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text('BTS Offer: 4 months + 2...',
                style:  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('24 visits x 4h'),
                      Text('1 visit a week (6 month..)'),
                      Text('1 Cleaner per visit'),
                    ],
                  ),
                  FittedBox(
                    child: Column(
                      children: <Widget>[
                        Text('2400 SAR',
                          style:  TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            color: Colors.cyan,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text('Save 33.33%',
                              style:  TextStyle(
                                color: Colors.redAccent,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text('VAT I..'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PackageCardWidget extends StatelessWidget {
  const PackageCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Divider(),
          Text('BTS Offer: 4 months + 2...',
            style:  TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('24 visits x 4h'),
                  Text('1 visit a week (6 month..)'),
                  Text('1 Cleaner per visit'),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('2400 SAR',
                    style:  TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.cyan,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text('Save 33.33%',
                        style:  TextStyle(
                          color: Colors.redAccent,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('VAT I..'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
