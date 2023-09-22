import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {

  @override
  State<NavigationExample> createState() => _NavigationExampleState();

}

class _NavigationExampleState  extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        backgroundColor: Colors.orange,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label:'Home',
            selectedIcon: Icon(Icons.home),
          ),
          NavigationDestination(
            icon: Icon(Icons.school_outlined),
            label:'School',
            selectedIcon: Icon(Icons.school),
          ),
          NavigationDestination(
            icon: Icon(Icons.business_outlined),
            label:'Business',
            selectedIcon: Icon(Icons.business),
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: Text('PAGE 1'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Text('PAGE 2'),
        ),
        Container(
          color: Colors.purpleAccent,
          alignment: Alignment.center,
          child: Text('PAGE 3'),
        ),
      ] [currentPageIndex]
    );
  }
}
