import 'package:flutter/material.dart';
import 'package:the_stack/common/the_stack_app_bar.dart';
import 'package:the_stack/common/the_stack_drawer.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TheStackAppBar(),
      drawer: const TheStackDrawer(),
      body: IconButton(
        onPressed: () {Navigator.pushNamed(context, '/');},
        icon: const Icon(Icons.arrow_back),
      ),
    );
  }
}