import 'package:flutter/material.dart';
import 'package:tgh_gmail_clone/screens/home_screen.dart';
import 'package:tgh_gmail_clone/screens/meetPage.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Mail'),
        BottomNavigationBarItem(icon: Icon(Icons.video_camera_back_outlined), label: 'Meet'),
      ],
      onTap: (value) => onItemTapped(context, value),
      );
      
  }
  void onItemTapped(BuildContext context, int index){
        setState(() {
          selectedItem = index;
          if(selectedItem == 0){
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          }else if(selectedItem == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MeetPage()));
          }
        });
      }
}