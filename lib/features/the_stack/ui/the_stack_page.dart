import 'package:flutter/material.dart';
import 'package:the_stack/common/the_stack_app_bar.dart';
import 'package:the_stack/common/the_stack_drawer.dart';

class TheStackPage extends StatefulWidget {
  TheStackPage({super.key, required this.title});

  final String title;
  final List<String> lists = ["Your Mom"];

  @override
  State<TheStackPage> createState() => _TheStackPageState();
}

class _TheStackPageState extends State<TheStackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TheStackAppBar(),
        drawer: const TheStackDrawer(),
        body: ListView(
          children: widget.lists.map((todoList) => ListTile(
            title: Center(
              child: Text(todoList),
            ),
            onTap: (){Navigator.pushNamed(context, '/todoList');},
          )).toList(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Add button selected');
          },
          child: const Icon(Icons.add),
        )
    );
  }
}