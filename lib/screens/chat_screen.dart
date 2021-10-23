import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:masterapplication/Page/analysis_page.dart';
import 'package:masterapplication/Page/design_page.dart';
import 'package:masterapplication/page/profile_Page.dart';



//import 'package:firebase_core/firebase_core.dart';

class ChatScreen extends StatefulWidget {
  static const String screenRoute = 'chat_screen';

  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;
  late User signedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser(){
    
    try {
      final user= _auth.currentUser;
    if (user !=null){
      signedInUser=user;
      print(signedInUser.email);
    }
    } catch (e) {
      print(e);
    }
  }
  int currentIndex=2;
  final screens=[
    DesignPage(),
    AnalysisPage(),
    Profilepage(),
  ];





  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      

      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        //automaticallyImplyLeading: false,
        

        centerTitle: true,
        title: Row(
          
          children: [
            //Image.asset('images/2.png', height: 25),
            SizedBox(width: 10),
            Text('تحليل وانتاج قواعد البيانات')
            
          ],
          

        ),
        
        actions: [
          IconButton(
            onPressed: () {
              // add here logout function
              _auth.signOut();
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          )
        ],
        
      ),
      body: screens[currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepOrange[50],
        
        iconSize: 25,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        //showSelectedLabels:false,

        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex=index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.grading_rounded),
            label: 'تصميم قواعد البيانات',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined),
            label: 'تحليل قواعد البيانات',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
            backgroundColor: Colors.blue,
          ),

      ],)
        );
  }

}