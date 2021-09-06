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
          bottomNavigationBar: CustomBottomNavigation()),
    );
  }
}

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  BottomNavigationBarItem getBottomBarItem(
      IconData icon, String text, Color color) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        getBottomBarItem(
          Icons.home,
          "Home",
          Colors.white,
        ),
        getBottomBarItem(
          Icons.add_shopping_cart,
          "Cart",
          Colors.black54,
        ),
      ],
      backgroundColor: Colors.teal,
    );
  }
}
