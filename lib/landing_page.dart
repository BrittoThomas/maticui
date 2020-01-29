import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:matic/dot_widget.dart';
import 'package:matic/signup_page.dart';
import 'package:matic/tabbar_controller.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        backgroundColor: Color(0xff4a9fd7),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  height: 120,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Text(
                          AppLocalizations.of(context).tr('localization_button_title'),
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        onTap: (){
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
                      GestureDetector(
                        child: Text('Help',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        onTap: (){

                        },
                      ),
                    ],
                  ),
                ),
                Image(
                  height: 80,
                  fit: BoxFit.fill,
                  image: AssetImage('images/logo.png'),
                ),
                Text(
                  AppLocalizations.of(context).tr('title'),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w900
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  AppLocalizations.of(context).tr('matic_description1'),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    DotWidget(selected:  true,),
                    DotWidget(),
                    DotWidget(),
                    DotWidget(),
                    DotWidget(),
                    DotWidget(),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  width: 250,
                  height: 40,
                  child: FlatButton(
                    child: Text(
                    AppLocalizations.of(context).tr("button_title_signin_with_facebook"),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    color: Color(0xff445d96),
                    onPressed: (){

                    },
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 250,
                  height: 40,
                  child: FlatButton(
                    child: Text(AppLocalizations.of(context).tr("button_title_signup"),
                      style: TextStyle(
                        color: Color(0xff4a9fd7),
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  child: Text(
                    AppLocalizations.of(context).tr("button_title_signin"),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  onTap: (){

                  },
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  child: Text(
                    AppLocalizations.of(context).tr("button_title_continue_guest"),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TabbarControllerPage()));
                  },
                ),
                SizedBox(height: 20,),
                Text(
                  AppLocalizations.of(context).tr("terms_and_privacy_title"),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 10,),
                GestureDetector(
                  child: Text(
                    AppLocalizations.of(context).tr("button_title_terms_and_privacy"),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  onTap: (){

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

