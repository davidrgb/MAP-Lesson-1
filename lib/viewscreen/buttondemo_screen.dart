import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget {
  static const routeName = '/buttonDemoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('======== Floating Action Button'),
        child: Icon(Icons.add),
      ),
      body: Column(children: [
        ElevatedButton(
          onPressed: () {
            print('Elevated Button 1');
          },
          child: Text('Elevated Button 1'),
        ),
        ElevatedButton.icon(
          onPressed: () => print('Elevated Button 2'),
          icon: Icon(Icons.add_link),
          label: Text('Elevated Button 2'),
        ),
      ]),
    );
  }
}
