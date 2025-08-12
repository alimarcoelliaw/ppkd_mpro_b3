import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});
  static const id = "/main";
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    // Text("selamat datang dashboard"),
    // Text("aplication of the mobile legend"),
    // Text("A"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),

      // endDrawer: Drawer(child: Column(children: [])),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // activeIcon: Icon(Icons.abc_outlined),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'about'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          print(value);
          print("Nilai SelecetedIndex Before : $_selectedIndex");

          print("Nilai BotNav : $value");
          setState(() {
            _selectedIndex = value;
          });
          print("Nilai SelecetedIndex After: $_selectedIndex");
        },
        // onTap: _onItemTapped,
      ),
    );
  }
}
