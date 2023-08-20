import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instapay/accounts.dart';
import 'package:instapay/menu.dart';
import 'package:instapay/serveces.dart';

import 'notification.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false
    ,title: "InsatPay",home: Home(),
    theme: new ThemeData(scaffoldBackgroundColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

   return Scaffold(
       bottomNavigationBar: BottomNavigationBar(items: [
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


         currentIndex:0,
         selectedItemColor: Colors.lightBlue,
         iconSize: 20,
         onTap: (index){
if (index==0){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
}
        else if (index==3){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>accounts()));
}
else if (index==4){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>menu()));
}

         },//ontap
       )




     ,  body:ListView(children: [
     Container(height: 150,
       decoration: BoxDecoration(
           boxShadow: [BoxShadow(color: Colors.white,
               offset: Offset(0,0.2),blurRadius: 0
           )],
           borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)
           ),
           gradient: LinearGradient(colors: [
             Colors.deepOrange,Colors.deepPurple,
           ]
               ,begin: Alignment.topRight
               ,end: Alignment.bottomLeft
           )),

       child: ListView(children: [
         Row(children: [IconButton(onPressed:(){
           Navigator.push(context, MaterialPageRoute(builder:(context)=>notification()));
         }, icon: Icon(Icons.notifications_active,size: 50,color: Colors.white,))
,Container(width: 200,)
           ,Text("Welcom",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white),)
         ],)
,Row(children: [Container(width: 210,)
         ,Text("User",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.white),)
         ],)



       ],),

     )

     ,Container(height: 40,)


     ,Container(width:double.infinity,height: 80,child:
       ListView(scrollDirection: Axis.horizontal
         ,children: [Container(width: 50,)
          , Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30))
         ,width: 220,height: 100,child: Column(children: [
             Row(children: [Container(width: 20,),Text("SEND MONEY USING",style: TextStyle(fontSize: 15),)],)
             ,Row(children: [Container(width: 50,),Text("MOBILE NUMBER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],)
             ,Row(children: [Container(width: 70,),Text("OR",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
                 Container(width: 5,), Text("IPA",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),)
             ],)
           ],),)
,Container(width: 50,)
           ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30))
       ,width: 220,height: 100,child: Column(children: [
             Row(children: [Container(width: 20,),Text("ALL YOUR",style: TextStyle(fontSize: 15),)],)
             ,Row(children: [Container(width: 50,),Text("BANK",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrange),)
               ,Container(width: 5,),Text("ACCOUNTS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                 )],)
             ,Row(children: [Container(width: 70,),Text("IN ONE APP",style: TextStyle(fontSize: 15,),),
             ],)
           ],),)
           
     ,Container(width: 50,)
           ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30))
             ,width: 220,height: 100,child: Column(children: [
             Row(children: [Container(width: 20,),Text("YOU CAN NOW",style: TextStyle(fontSize: 15),)],)
             ,Row(children: [Container(width: 30,),Text("TRANSFER",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 Container(width: 5,),  Text("MONY",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ,color: Colors.deepOrange),)
                 ],)
           ,Row(children: [Container(width: 100,),Text("TO ANY ONE",style: TextStyle(fontSize: 15,),)
               ],)

             ,]))
           ,Container(width: 50,)

         ],),)
,Container(height: 50,)
     //////////////////////////////////////////////////////////////////////////////////////////////////
     
,Container(width: double.infinity,child: Text("Accounts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)

     ,Container(height: 30,)
,Container(width: 100,height: 100,decoration: BoxDecoration(boxShadow:[BoxShadow(offset: Offset(0,2),color: Colors.white)]
       ,borderRadius: BorderRadius.circular(20))


       ,child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
         
         Container(width: 50,height: 50,decoration: BoxDecoration(color:Colors.lightBlueAccent,
             borderRadius: BorderRadius.circular(10)
         ),


           child: IconButton(onPressed: (){}, icon:Icon(Icons.add,size: 30,),),
         )
         
         ,Text("Not found availble account")
           
           ,Icon(Icons.account_balance_rounded,size: 40,)
         
         ],)
     )
,Divider()
,Row(children: [Container(width: 10,),Text("Serveces",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
     ,Container(width: 200,)
       ,TextButton(onPressed:(){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>Servec()));
       },
           child: Text("Show All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15
       ,color: Colors.red
       ),))
     ],)

,Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

  Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
    ,width: 100,height: 100,child: Column(children: [
  Container(height: 20,),
  Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
    ,width: 40,height: 40,child: IconButton(onPressed: (){},icon: Icon(Icons.monetization_on_outlined),color: Colors.red,),)
  ,Text("تبرعات",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
],)
  ,)

       ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
         ,width: 100,height: 100,child: Column(children: [
         Container(height: 20,),
         Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
           ,width: 40,height: 40,child: IconButton(onPressed: (){},icon: Icon(Icons.transit_enterexit_rounded),color: Colors.red,),)
         ,Text("طلب دفع",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
       ],)
         ,)

       ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
     ,width: 100,height: 100,child: Column(children: [
         Container(height: 20,),
         Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
           ,width: 40,height: 40,child: IconButton(onPressed: (){},icon: Icon(Icons.trending_up),color: Colors.red,),)
         ,Text("ارسال نقود",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
       ],)
         ,)


          ],)

     ,Container(height: 30,)


     ,Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

       Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
         ,width: 100,height: 100,child: Column(children: [
           Container(height: 20,),
           Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
             ,width: 40,height: 40,child: IconButton(onPressed: (){},icon: Icon(Icons.menu),color: Colors.red,),)
           ,Text("طلبات قيد \n الانتظار",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
         ],)
         ,)

       ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
         ,width: 100,height: 100,child: Column(children: [
           Container(height: 20,),
           Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
             ,width: 40,height: 40,child: IconButton(onPressed: (){},icon: Icon(Icons.import_export_outlined),color: Colors.red,),)
           ,Text("عرض التحويلات",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
         ],)
         ,)

       ,Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
         ,width: 100,height: 100,child: Column(children: [
           Container(height: 20,),
           Container(decoration: BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.circular(10))
             ,width: 40,height: 40,child: IconButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>accounts()));
             },icon: Icon(Icons.account_balance_outlined),color: Colors.red,),)
           ,Text("ادارة الحسابات",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
         ],)
         ,)


     ],)


,Divider()

,Row(children: [Container(width: 10,)
     ,Text("Last Transfers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
       ,Container(width: 155,)
       ,TextButton(onPressed:(){}, child: Text("Show All",style: TextStyle(color: Colors.red
           ,fontWeight: FontWeight.bold,fontSize: 15),))
     ],)

,Image.asset("assets/dolar.jpeg",width: 350,height: 250,)

,Row(children: [Container(width: 120,)
     ,Text("لا يوجد تحويلات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),)
     ],)

,Container(height: 30,)


























   ],)














































































































   );




























  }
}