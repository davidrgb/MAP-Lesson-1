import 'package:flutter/material.dart';
import 'package:lesson1/viewscreen/materialdesign_screen.dart';

class StartScreen extends StatelessWidget {
  static const routeName = '/startScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Menu'),
        actions: [
          IconButton(
              onPressed: () {
                print('======== alarm button');
              },
              icon: Icon(Icons.alarm)),
          IconButton(
              onPressed: () {
                print('======== message button');
              },
              icon: Icon(Icons.message)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.account_circle_rounded,
                size: 80.0,
              ),
              accountName: Text('David Russell'),
              accountEmail: Text('drussell22@uco.edu'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Friends'),
              onTap: () {
                print('======== drawer: Friends');
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                print('======== drawer: Logout');
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text('Choose a menu to navigate'),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MaterialDesignScreen.routeName);
              },
              child: Text('Material Design Style Demo')),
          ElevatedButton(
              onPressed: () {
                print('======== the second menu');
              },
              child: Text('Second button')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('======== floating action button');
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (int index) {
          print('======== bottom tab index: $index');
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Time',
            icon: Icon(Icons.time_to_leave),
          ),
          BottomNavigationBarItem(
            label: 'Business',
            icon: Icon(Icons.business),
          ),
        ],
      ),
    );
  }
}
