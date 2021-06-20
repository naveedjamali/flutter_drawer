import 'package:flutter/material.dart';
import 'package:flutter_drawer/screens/first_screen.dart';
import 'package:flutter_drawer/screens/second_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool firstPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  firstPage = true;
                });
              },
              child: Text('First Page'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  firstPage = false;
                });
              },
              child: Text('Second Page'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer Example'),
      ),
      body: firstPage ? FirstPage() : SecondPage(),
    );
  }
}
