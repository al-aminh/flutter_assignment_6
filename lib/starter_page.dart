import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page", style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: const Color.fromARGB(255, 85, 148, 133),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listview');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 85, 148, 133),
              ),
              child: Text("Go to List View", style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
              
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gridview');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 85, 148, 133),
              ),
              child: Text("Go to Grid View", style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
          ],
        ),
      ),
    );
  }
}