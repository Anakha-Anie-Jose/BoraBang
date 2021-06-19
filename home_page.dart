import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static String tag='home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final welcome=Padding(padding: EdgeInsets.all(8.0),
    child: Text('Welcome Army!!!!',
    style: TextStyle(fontSize: 40.0, color:Colors.purple),
    ),
    );
    final des=Padding(padding: EdgeInsets.all(10.0),
     child: Text("Thankyou For using the app .You can chat, see pictures and attend quizesof your favourite BTS idols",
     style: TextStyle(fontSize: 25.0,color: Colors.black54,),
     ),
     );
     
     final body=Container(
       width: MediaQuery.of(context).size.width,
       padding: EdgeInsets.all(28.0),
        decoration: BoxDecoration(
        gradient: LinearGradient(
           colors: [Colors.purple, Colors.purpleAccent]
         ),
       ),
       child: Column(children:<Widget> [welcome,des],),
     );
     return Scaffold(
       body: body,
     );
  }
}