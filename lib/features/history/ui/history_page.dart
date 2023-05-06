import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Completed Tasks',
          style: TextStyle(
            color: Colors.white,
          ),),
        backgroundColor: Colors.brown,
      ),
      body: IconButton(
        onPressed: () {Navigator.pushNamed(context, '/');},
        icon: const Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.red,
    );
  }
}