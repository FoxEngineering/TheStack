import 'package:flutter/material.dart';

class TheStackDrawer extends StatelessWidget {
  const TheStackDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 150,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
            child: Center(
              child: Text("The Stack",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),),
            ),
          ),
          ListTile(title: Text("Lists"),),
          ListTile(title: Text("History"),),
          ListTile(title: Text("Stats"),),
          ListTile(title: Text("Friends"),),
        ],
      ),
    );
  }
}
