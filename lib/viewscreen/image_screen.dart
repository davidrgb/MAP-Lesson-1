import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  static const routeName = '/imageScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Demo'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.amberAccent,
            height: 200.0,
            child: Image.network(
                'https://m.media-amazon.com/images/I/61-Q3ss+h0L._AC_UY327_FMwebp_QL65_.jpg'),
          ),
          Icon(
            Icons.ac_unit,
            size: 200.0,
            color: Colors.blue,
          ),
          Container(
            color: Colors.blueAccent,
            height: 200.0,
            child: Image.network(
                'https://m.media-amazon.com/images/I/61VTcfslW3L._AC_UY327_FMwebp_QL65_.jpg'),
          ),
          Container(
            height: 200.0,
            child: Image.asset(
                'images/owl.png'),
          ),
          Container(
            height: 300.0,
            child: Image.asset(
                'images/melon.jpg'),
          ),
        ],
      ),
    );
  }
}
