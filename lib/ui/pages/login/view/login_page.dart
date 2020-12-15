import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/core/colors.dart';
import 'package:helloworld/core/components/app_primary_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(children: [
             SizedBox(
              height: 164.0,
              width: 164.0,
            ),
            Center(child: 
            Image.asset("/images/logo.png", width: 250.0, ),
            ),
            SizedBox(height: 150.0,
              width: 200.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UserName',
              ),
            ),
            SizedBox(
              height: 16.0,
              width: 16.0,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 32.0,
              width: 32.0,
            ),
            AppPrimaryButton(
              onPressed: ()=>(print("")),
              child: Text(
                "LOGIN",
              ),
              padding: EdgeInsets.symmetric(vertical: 24.0),
              
            ),
            SizedBox(
              height: 16.0,
              width: 16.0,
            ),
            Text(
              'Esqueceu da Palavra-passe',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: appPrimaryColor,
                  decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 240.0,
              width: 16.0,
            ),
            Text(
              'Powered by Komit DevTrust',
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: appPrimaryColor,
              ),
            )
          ])),
    );
  }
}
