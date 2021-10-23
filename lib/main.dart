import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'package:masterapplication/screens/signin_screen.dart';
// ignore: unused_import
import 'package:masterapplication/screens/chat_screen.dart';

import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تطبيق تحليل وانتاج قواعد البيانات',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      //home: WelcomeScreen(),
      initialRoute:WelcomeScreen.screenRoute,
      routes:{
      WelcomeScreen.screenRoute:(context)=>WelcomeScreen(),
      SignInScreen.screenRoute:(context)=>SignInScreen(),
      ChatScreen.screenRoute:(context)=>ChatScreen(),


        //'signin_screen':(context)=>SignInScreen(),

      }
      
    );
  }
}
