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
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.teal,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
        ),
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Flutter Commerce",
            ),
            leading: Image(
              image: AssetImage(
                "images/logo.jpg",
              ),
            ),
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
    );
  }
}
