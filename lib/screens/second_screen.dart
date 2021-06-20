import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.green,
       child: Center(
        child: Text(
          'Second Page',
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}