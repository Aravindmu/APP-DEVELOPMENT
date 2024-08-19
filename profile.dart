import 'package:flutter/material.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 174, 34, 255),
      ),
      body: Container(
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black,
          
        )
          
        
      ),
    );
  }
}