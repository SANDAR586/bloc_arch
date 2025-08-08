import 'package:flutter/material.dart';
    
class FirstScreen extends StatelessWidget {

  const FirstScreen({ super.key });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('First Screen'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: const Text('Go to Second Screen'),
          ),
        ],
      ),
    );
  }
}