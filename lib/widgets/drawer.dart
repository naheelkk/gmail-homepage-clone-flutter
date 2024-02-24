import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Naheel'),
            accountEmail: Text('naheelkk@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Primary'),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Social'),
          ),
          ListTile(
            leading: Icon(Icons.star_border_outlined),
            title: Text('Starred'),
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text('Snoozed'),
          ),
        ],
      ),
    );
  }
}
