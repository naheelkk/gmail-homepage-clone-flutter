import 'package:flutter/material.dart';
import 'package:tgh_gmail_clone/models/listView_model.dart';
// import 'package:tgh_gmail_clone/models/listView_model.dart';
import 'package:tgh_gmail_clone/widgets/bottom_nav.dart';
import 'package:tgh_gmail_clone/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List<ListItem> items = List.generate(15, (index) => 
ListItem(
  isStarred: false,
   userName: 'User $index',
    message: 'This is a sample message from user $index.'
    ),
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        toolbarHeight: 90,
        title: SearchBar(
          hintText: 'Search mail',
          trailing: Iterable.generate(
              1, (index) => Icon(Icons.account_circle_outlined)).toList(),
        ), 
      ),
      drawer: MenuDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          ListItem item = items[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://picsum.photos/250?image=9'),
            ),
            title: Text(item.userName,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                )),
            subtitle: Text(
              item.message,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                item.isStarred = !item.isStarred;
                });
              },
              icon: item.isStarred
                  ? Icon(
                      Icons.star,
                      color: Colors.yellow,
                    )
                  : Icon(
                      Icons.star_border,
                      color: Colors.black,
                    ),
            ),
          );
        },
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
