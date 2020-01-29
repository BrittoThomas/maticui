import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matic/landing_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: ListView(
          padding: EdgeInsets.only(top: 0, bottom: 100),
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 180,
                  padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      colors: [
                        Colors.blue[800],
                        Colors.blue[400],
                      ]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Britto Thomas',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          FlatButton(
                            child: Row(
                              children: <Widget>[
                                Text('Edit',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Icon(
                                    Icons.edit,
                                  color: Colors.white,
                                ),
                              ],
                            ),

                            onPressed: (){

                            },
                          ),
                        ],
                      ),
                      Text(
                        'britto.thomas@aventusinformatics.com',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '+91 9995615896',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: -30,
                  bottom: -30,
                  child: Icon(
                    Icons.perm_identity,
                    color: Colors.white30,
                    size: 100,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                title: Text('Addresses'),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                height: 250,
                padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.cyan[800],
                          Colors.cyan[400],
                        ]
                    ),
                  ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'INVITE FRIENDS',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20,),
                        Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Your friends will recieve 15% off their first 3 cleaning, You will get 15% off for 3 cleanings when a friend compless their first cleaning.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: (data.savedLocale.toString() == 'ar_DZ') ? MainAxisAlignment.end : MainAxisAlignment.start ,
                      children: <Widget>[
                        FlatButton(
                          child: Text('K02QWJ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          color: Colors.cyan[300],
                          onPressed: (){

                          },
                        ),
                        IconButton(
                          iconSize: 40,
                          icon: Icon(
                            CupertinoIcons.share_up,
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image(
                    width: 80,
                    fit: BoxFit.fitWidth,
                    image: AssetImage('images/coupon.png'),
                    color: Colors.white,
                  ),
                ),
              ]
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(AppLocalizations.of(context).tr("profile_section_title_promocode")),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(AppLocalizations.of(context).tr("profile_section_title_payment")),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(AppLocalizations.of(context).tr("profile_section_title_inbox")),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(AppLocalizations.of(context).tr("profile_section_title_help")),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(AppLocalizations.of(context).tr("profile_section_title_legal")),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              child: Text(
                AppLocalizations.of(context).tr('localization_button_title'),
                style: TextStyle(
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: (){
                print(data.savedLocale);
                if (data.savedLocale.toString() == 'ar_DZ') {
                  print('Switching to English');
                  setState(() {
                    data.changeLocale(Locale('en', 'US'));
                  });
                }else{
                  print('Switching to Arabic');
                  setState(() {
                    data.changeLocale(Locale('ar', 'DZ'));
                  });
                }
              },
            ),
            Divider(),
            FlatButton(
              child: Text(
                AppLocalizations.of(context).tr("button_title_logout"),
                style: TextStyle(
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LandingPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
