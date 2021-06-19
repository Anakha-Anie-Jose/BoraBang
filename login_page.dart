import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:btsapp/register_page.dart';
import 'package:btsapp/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag='login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      
      final Loginbutton = Padding(
        padding:EdgeInsets.symmetric(vertical: 16.0),
        
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(LoginPage.tag);
          },
         color: Colors.purpleAccent,
          child: Text('Login', 
          style: TextStyle(color: Colors.white,),),

       ), 
       );
       final newuserq=Text('New User?');
       final newuserbutton=FlatButton(
         child: Text('Register'),
         color: Colors.deepPurpleAccent[100],
         onPressed: (){
        Navigator.of(context).pushNamed(RegisterPage.tag);
         },
       );

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
                 Loginbutton,
                 SizedBox(height: 8.0),
                 newuserq,
                 SizedBox(height: 8.0),
                 newuserbutton,
               ],),),
      );
  
  }
}