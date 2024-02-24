import 'package:flutter/material.dart';
import 'package:tgh_gmail_clone/models/listView_model.dart';
import 'package:tgh_gmail_clone/widgets/bottom_nav.dart';
import 'package:tgh_gmail_clone/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isStarred = false;
  // late List _listItems;
  // @override
  // void initState() {
  //   super.initState();
  //   _listItems = List.generate(
  //     15,
  //     (index) => (isStarred: false),
  //   );
  // }

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
        itemCount: 15,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage('https://picsum.photos/250?image=9'),
            ),
            title: Text('User $index',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                )),
            subtitle: Text(
              'This is a sample message from user $index.',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                isStarred = !isStarred;
                });
              },
              icon: isStarred
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
