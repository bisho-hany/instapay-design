import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Servec extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 150,
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
        title: Text("Serveces",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic),),

        )

,body:ListView(children: [
Column(children: [

Container(height: 30,)
  ,Container(width: 300,height: 70,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
    ,child: ListTile(onTap: (){},
    leading: Icon(Icons.trending_up,size: 30,color: Colors.red,),
      title: Text("ارسال نقود",style: TextStyle(fontSize: 15),),
    )
    ,)

      ,Container(height: 30,)

,Container(width: 300,height: 70,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
        ,child: ListTile(onTap: (){},
          leading: Icon(Icons.transit_enterexit_rounded,size: 30,color: Colors.red),
          title: Text("طلب دفع",style: TextStyle(fontSize: 15),),
        )
        ,)

      ,Container(height: 30,)

,Container(width: 300,height: 70,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
        ,child: ListTile(onTap: (){},
          leading: Icon(Icons.handshake,size: 30,color: Colors.red),
          title: Text("تبرعات",style: TextStyle(fontSize: 15),),
        )
        ,)

      ,Container(height: 30,)

,Container(width: 300,height: 70,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
        ,child: ListTile(onTap: (){},
          leading: Icon(Icons.money_rounded,size: 30,color: Colors.red),
          title: Text("كشف حساب",style: TextStyle(fontSize: 15),),
        )
        ,)

      ,Container(height: 30,)

      ,Container(width: 300,height: 70,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
        ,child: ListTile(onTap: (){},
          leading: Icon(Icons.star_border,size: 30,color: Colors.red),
          title: Text("الاشخاص المفضلين",style: TextStyle(fontSize: 15),),
        )
        ,)

      ,Container(height: 30,)


      ,Container(width: 300,height: 70,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
        ,child: ListTile(onTap: (){},
          leading: Icon(Icons.list_rounded,size: 30,color: Colors.red),
          title: Text("طلبات قيد الانتظار",style: TextStyle(fontSize: 15),),
        )
        ,)

      ,Container(height: 30,)

      ,Container(width: 300,height: 70,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
        ,child: ListTile(onTap: (){},
          leading: Icon(Icons.import_export_outlined,size: 30,color: Colors.red),
          title: Text("التحويلات",style: TextStyle(fontSize: 15),),
        )
        ,)


      ,Container(height: 30,)

      ,Container(width: 300,height: 70,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20))
        ,child: ListTile(onTap: (){},
          leading: Icon(Icons.mobile_screen_share_rounded,size: 30,color: Colors.red),
          title: Text("رصيد الحساب",style: TextStyle(fontSize: 15),),
        )
        ,)

      ,Container(height: 30,)

],)
    ],) ,









































    );
  }
}