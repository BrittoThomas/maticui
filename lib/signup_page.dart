import 'package:flutter/material.dart';
import 'package:matic/countrycode_picker.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Text(
              'Sign up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20,),
            Text('First name'),
            TextField(
              decoration: InputDecoration(
                hintText: 'First name',
                fillColor: Colors.grey[300],
                filled: true,
              ),
            ),

            SizedBox(height: 10,),
            Text('Last name'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Last name',
                fillColor: Colors.grey[300],
                filled: true,
              ),
            ),

            SizedBox(height: 10,),
            Text('Email'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                fillColor: Colors.grey[300],
                filled: true,
              ),
            ),

            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Country'),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Country',
                          fillColor: Colors.grey[300],
                          filled: true,
                        ),
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context) => CountryCodePicker(),
                              fullscreenDialog: true,
                            ),

                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Phone number'),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Phone number',
                          fillColor: Colors.grey[300],
                          filled: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 30,),

            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              color: Colors.blueGrey,
              onPressed: (){

              },
            ),

            SizedBox(height: 20,),
            Text(
              'By creating an account you agree to our',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              child: Text(
                'Terms of Service and Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              onTap: (){

              },
            ),

          ],
        ),
      ),
    );
  }
}
