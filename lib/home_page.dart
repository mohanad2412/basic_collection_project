import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'New App',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: IconButton(
              icon: Icon(Icons.security),
              color: Colors.white,
              onPressed: () {
                print("Tmam");
              },
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: NetworkImage(
                      'https://png.pngtree.com/png-vector/20211023/ourmid/pngtree-salon-logo-png-image_4004444.png'),
                  height: 150,
                  width: 150,
                ),
                Text('data'),
              ],
            ),
            Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
            // Text('me'),
          ],
        ),
      ),
    );
  }
}
