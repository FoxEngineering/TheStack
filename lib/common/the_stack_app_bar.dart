import 'package:flutter/material.dart';

class TheStackAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TheStackAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: GestureDetector(
        onTap: (){Navigator.popUntil(context, (route) => !Navigator.canPop(context));},
        child: const SizedBox(
          width: 200,
          child: Center(
            child: Text("The Stack"),
          )),
      ),
      backgroundColor: Colors.orangeAccent,
      actions: [
        IconButton(
          onPressed: () {Navigator.pushNamed(context, '/settings');},
          icon: const Icon(Icons.settings),
        ),
      ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
