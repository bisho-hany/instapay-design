import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'accounts.dart';
import 'main.dart';

class menu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),label: "Home"
          ,backgroundColor: Colors.white)
      ,BottomNavigationBarItem(icon: Icon(Icons.trending_up,color: Colors.grey,),label: ""
          ,backgroundColor: Colors.white)
      ,BottomNavigationBarItem(icon: Icon(Icons.transit_enterexit_rounded,color: Colors.grey,),label: ""
          ,backgroundColor: Colors.white)
      ,BottomNavigationBarItem(icon: Icon(Icons.account_balance_rounded,color: Colors.grey,),label: "Accounts"
          ,backgroundColor: Colors.white)
      ,BottomNavigationBarItem(icon: Icon(Icons.menu,color: Colors.grey,),label: "more"
          ,backgroundColor: Colors.white)
    ],


      currentIndex:4,
      selectedItemColor: Colors.lightBlue,
      iconSize: 20,
      onTap: (index){
        if (index==0){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>Home()));
        }
        else if (index==4){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>menu()));
        }

        else if (index==3){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>accounts()));
        }
      },//ontap
    )

    ,body:
      ListView(children: [

        Container(height: 40,)

       , Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

          Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
            ,width: 120,height: 120,child: Column(children: [
              Container(height: 20,),
              Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
                ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.handshake_rounded,size: 30)
                ,color: Colors.red,),)
              ,Text("الخدمات",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
            ],)
            ,)

          ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
            ,width: 120,height: 120,child: Column(children: [
              Container(height: 20,),
              Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
                ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.home_filled,size: 30)
                ,color: Colors.red,),)
              ,Text("الرئيسية",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
            ],)
            ,)
        ]),


Container(height: 15,),

         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

        Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
    ,width: 120,height: 120,child: Column(children: [
    Container(height: 20,),
    Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
    ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.star_border,size: 30),color: Colors.red,),)
    ,Text("الاشخاص المفضلين",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
    ],)
    ,)

    ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
    ,width: 120,height: 120,child: Column(children: [
    Container(height: 20,),
    Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
    ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.menu_rounded,size: 30),color: Colors.red,),)
    ,Text("طبات قيد الانتظار",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
    ],)
    ,)
    ]),

        Container(height: 15,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

          Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
            ,width: 120,height: 120,child: Column(children: [
              Container(height: 20,),
              Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
                ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.alternate_email_rounded,size: 30),color: Colors.red,),)
              ,Text("قائمة IPA المحظورة",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
            ],)
            ,)

          ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
            ,width: 120,height: 120,child: Column(children: [
              Container(height: 20,),
              Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
                ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.import_export_outlined,size: 30),color: Colors.red,),)
              ,Text("التحويلات",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
            ],)
            ,)
        ]),


        Container(height: 15,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

          Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
            ,width: 120,height: 120,child: Column(children: [
              Container(height: 20,),
              Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
                ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.help_outline,size: 30),color: Colors.red,),)
              ,Text("اسئلة متكررة",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
            ],)
            ,)

          ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
            ,width: 120,height: 120,child: Column(children: [
              Container(height: 20,),
              Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
                ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.settings_applications_outlined,size: 30)
                  ,color: Colors.red,),)
              ,Text("الاعدادات",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
            ],)
            ,)
        ]),

        Container(height: 15,),


        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

          Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
            ,width: 120,height: 120,child: Column(children: [
              Container(height: 20,),
              Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
                ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.exit_to_app_rounded,size: 30),color: Colors.red,),)
              ,Text("تسجيل خروج",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
            ],)
            ,)

          ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
            ,width: 120,height: 120,child: Column(children: [
              Container(height: 20,),
              Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
                ,width: 70,height: 70,child: IconButton(onPressed: (){},icon: Icon(Icons.headset_mic_rounded,size: 30,)
                  ,color: Colors.red,),)
              ,Text("المساعدة",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
            ],)
            ,)
        ]),






      ],)















    );
  }
}