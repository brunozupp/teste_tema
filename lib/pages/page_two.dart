import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {

  const PageTwo({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
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