import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Commerce",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: Image(
            image: AssetImage(
              "images/logo.jpg",
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Text("Hello"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_shopping_cart,
              ),
              title: Text(
                "Cart",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}
