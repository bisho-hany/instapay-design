import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notification extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: Container(width: 300,height: 100,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.white,
                offset: Offset(0,0.2),blurRadius: 0
            )],
            gradient: LinearGradient(colors: [
              Colors.deepOrange,Colors.deepPurple,
            ]
                ,begin: Alignment.topRight
                ,end: Alignment.bottomLeft
            )),

      ),

title:  Row(children: [Container(width: 50,),
      Text("Notification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),)
      ],),
      ),
      
      
      body: Column(children: [Container(height: 150,),
        Image.asset("assets/bell.png",width: double.infinity,height: 250,)

      ,Text("No Notification Yet..",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20) )
      ],)
      
      
      
    );
  }
}