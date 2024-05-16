import 'package:flutter/material.dart';

class WaitingScreen extends StatelessWidget {
const WaitingScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(),
      ),

    );
  }
}