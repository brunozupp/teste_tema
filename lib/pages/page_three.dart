import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {

  const PageThree({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}