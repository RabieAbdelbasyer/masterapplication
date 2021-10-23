import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('صفحة المستخدم الرئيسية'),
          centerTitle: true,
          
          //backgroundColor: Colors.green,
          automaticallyImplyLeading: false,
          

        ),
        
            //body: Center(child: Text('صفحة المستخدم الرئيسية', style: TextStyle(fontSize: 60)))

      );
}