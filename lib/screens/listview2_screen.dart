import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['One', 'Two', 'Three', 'Four', 'Five'];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView2Screen'),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black,
          ),
          onTap: () => {
            print('You tapped on ${options[i]}'),
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
