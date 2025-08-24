import 'package:flutter/material.dart';

class Singleitem extends StatelessWidget {
  final String image;
  final String name;
  const Singleitem({required this.image, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: SizedBox(
          height: 350,
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(image, height: 200,),
              SizedBox(height: 30,),
              Text(name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
            ],
          ),
        )
      )
    );
  }
}