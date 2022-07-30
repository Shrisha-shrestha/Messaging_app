import 'package:flutter/material.dart';
import '../widgets/fav_contacts.dart';
import '../widgets/recent_chats.dart';
import '../widgets/Category_selector.dart';
class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            iconSize:30.0,
          color: Colors.white,
          icon: Icon(Icons.menu),
          onPressed:(){},
        ),
        title: Text('MESSENGER',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),),
        elevation: 0.0,
        actions: <Widget>[IconButton(
          iconSize:30.0,
          color: Colors.white,
          icon: Icon(Icons.search),
          onPressed:(){},
        ),],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                )
            ),
            child: Column(
              children: <Widget>[
                favcontact(),
               recentchats(),

              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}
