import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matic/dashboard_page.dart';
import 'package:matic/mybookings_page.dart';
import 'package:matic/profile_page.dart';

class TabbarControllerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            activeColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(AppLocalizations.of(context).tr("tab_title_home")),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                title: Text(AppLocalizations.of(context).tr("tab_title_mybookings")),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text(AppLocalizations.of(context).tr("tab_title_profile")),
              )
            ],
          ),
          tabBuilder: (context, i) {
            switch (i) {
              case 0:{
                return DashboardPage();
              }
              break;

              case 1:{
                return MyBookingsPage();
              }
              break;

              case 2:{
                return ProfilePage();
              }
              break;

              default:{
                return Center(child: Text('No Content'));
              }
              break;
            }
          }),
    );
  }
}