import 'package:flutter/material.dart';
import 'package:the_stack/common/the_stack_app_bar.dart';
import 'package:the_stack/common/the_stack_drawer.dart';
import 'package:the_stack/common/the_stack_title_sliver.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TheStackAppBar(),
      drawer: const TheStackDrawer(),
      body: CustomScrollView(
        slivers: [
          getTitleSliver('Settings', center: true),
          const SliverToBoxAdapter(
            child: Center(child: Text('NOT IMPLEMENTED YET')),
          )
        ],
      ),
    );
  }
}
