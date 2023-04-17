// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, i) => ListTile(
          leading: const Icon(Icons.ac_unit),
          title: const Text('ListTile Title'),
          subtitle: const Text('ListTile Subtitle'),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () => {
            print('You tapped on ListTile'),
          },
        ),
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black,
        ),
      ),
    );
  }
}
