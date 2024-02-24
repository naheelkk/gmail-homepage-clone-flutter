import 'package:flutter/material.dart';
import 'package:tgh_gmail_clone/widgets/bottom_nav.dart';

class MeetPage extends StatelessWidget {
  const MeetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Meet Page'),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}