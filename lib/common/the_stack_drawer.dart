import 'package:flutter/material.dart';

class TheStackDrawer extends StatelessWidget {
  const TheStackDrawer({Key? key}) : super(key: key);

  ListTile getListOption(BuildContext context, String title, String routeTo) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.pushNamed(context, routeTo);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 150,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
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
          getListOption(context, "Lists", "/"),
          getListOption(context, "History", "/history"),
          const ListTile(
            title: Text("Stats"),
          ),
          const ListTile(
            title: Text("Friends"),
          ),
        ],
      ),
    );
  }
}
