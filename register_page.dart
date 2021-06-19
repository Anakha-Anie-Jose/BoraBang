import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:btsapp/home_page.dart';
class RegisterPage extends StatefulWidget {
  static String tag='Register-page';
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final username=TextFormField(
        decoration: InputDecoration(
          hintText:'Name: ',
          contentPadding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),)),
        );

        final password=TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password: ',
            contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),),
          ),
        );
        final conpassword=TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Confirm Password: ',
            contentPadding: EdgeInsets.fromLTRB(20.0,10.0, 20.0, 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),),
          ),
        );
      
      final register = Padding(
        padding:EdgeInsets.symmetric(vertical: 16.0),
        
        child: RaisedButton(
          onPressed: () {
             Navigator.of(context).pushNamed(HomePage.tag);
          },
         color: Colors.purpleAccent,
          child: Text('Register', 
          style: TextStyle(color: Colors.white,),),

       ), );
      return Scaffold(
        backgroundColor: Colors.white,
         body:Center(
                        
             child:ListView(
               shrinkWrap: true,
               padding: EdgeInsets.only(left: 24.0,right: 24.0),
               children:<Widget> [
                 username,
                 SizedBox(height: 8.0),
                 password,
                 SizedBox(height: 24.0),
                 conpassword,
                 SizedBox(height: 24.0),
                 register,
               ],),),
      );
  }
}