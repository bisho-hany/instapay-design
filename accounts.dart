import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instapay/menu.dart';

import 'main.dart';

class accounts extends StatelessWidget{
 TextEditingController n1=TextEditingController();
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


        currentIndex:3,
        selectedItemColor: Colors.lightBlue,
        iconSize: 20,
        onTap: (index){
          if (index==0){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>Home()));
          }
          else if (index==3){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>accounts()));
          }
          else if (index==4){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>menu()));
          }

        },//ontap
      )











     , appBar: AppBar(toolbarHeight: 150,
      flexibleSpace: Container(width: 300,height: 200,
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

    title: Column(children: [
      Text("ادارة الحسابات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)




      ,TextField(controller: n1,
      decoration: InputDecoration(
        hintText: "ابحث عن بنك محدد"
      ,prefixIcon: Icon(Icons.search)
      ,fillColor: Colors.white,filled: true
          ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
      ),
      )

     ],),


    )




,body: Column(children: [

Container(height: 30,)
  ,Icon(Icons.account_balance_outlined,size: 250,color: Colors.purple,)

      ,Text("لا توجد حسابات بنكية متاحة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,
      fontStyle: FontStyle.italic
      ),)

    ,Text("لا توجد حسابات بنكية متاحة,لذا ابدأ\n                    فى اضافتها هنا")


,Container(height: 100,)


      ,Container(decoration: BoxDecoration(color: Colors.purple,
        borderRadius: BorderRadius.circular(30)
            ,
      )
    
    ,width:200 ,height: 50
      ,child:ListTile(
        leading: Icon(Icons.add,size: 20,color: Colors.white,)
        ,title: Text("Add Account",style: TextStyle(color: Colors.white),),
      onTap: (){},

      ) ,
      )




    ],)











      ,);
  }
}