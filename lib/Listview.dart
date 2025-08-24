import 'package:flutter/material.dart';
// import 'package:flutter_assignment_6/singleitem.dart';
import 'package:flutter_assignment_6/Singleitem.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    var heros = [
      {
        "image": "https://images.unsplash.com/photo-1635863138275-d9b33299680b?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8SXJvbiUyMG1hbnxlbnwwfHwwfHx8MA%3D%3D",
        "name": "Iron Man"
      },
      {
        "image": "https://images.unsplash.com/photo-1635805737707-575885ab0820?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8SXJvbiUyMG1hbnxlbnwwfHwwfHx8MA%3D%3D",
        "name": "Spider Man"
      },
      {
        "image": "https://images.unsplash.com/photo-1569003339405-ea396a5a8a90?w=300&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDQyfHx8ZW58MHx8fHx8",
        "name": "Captain America"
      },
      {
        "image": "https://images.unsplash.com/photo-1588862081126-293dc587ec51?w=300&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDgyfHx8ZW58MHx8fHx8",
        "name": "Bat Man"
      },
      {
        "image": "https://images.unsplash.com/photo-1501432377862-3d0432b87a14?w=300&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDUzfHx8ZW58MHx8fHx8",
        "name": "Dead Pool"
      },
      {
        "image": "https://images.unsplash.com/photo-1644509911789-1a9e2338ce61?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3VwZXIlMjBoZXJvc3xlbnwwfHwwfHx8MA%3D%3D",
        "name": "Ant Man"
      },
      {
        "image": "https://upload.wikimedia.org/wikipedia/en/a/aa/Hulk_%28circa_2019%29.png",
        "name": "Hulk"
      },
      {
        "image": "https://upload.wikimedia.org/wikipedia/en/3/3c/Chris_Hemsworth_as_Thor.jpg",
        "name": "Thor"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "List View",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 85, 148, 133),
      ),

      body: ListView.builder(
        itemCount: heros.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Singleitem(
                    image: heros[index]['image']!,
                    name: heros[index]['name']!,
                  ),
                ),
              );
            },
            child: Card(
              color: const Color.fromARGB(255, 173, 214, 23),
              child: Row(
                children: [
                  Image.network(
                    heros[index]['image']!,
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(width: 20),
                  Text(heros[index]['name']!, style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
