import 'package:flutter/material.dart';
import 'package:matic/countrycode.dart';

class CountryCodePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Country'),
      ),
      body: ListView.separated(
        itemCount: countryCodes.length,
        itemBuilder: (context, int index) {
            return ListTile(
              leading: Image(
                width: 30,
                height: 20,
                image: AssetImage(countryCodes[index].flagUri),
              ),
              title: Text(countryCodes[index].name),
              trailing: Text(countryCodes[index].dialCode),
            );
          },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
