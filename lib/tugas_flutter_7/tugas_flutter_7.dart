import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/Tugas_flutter_7/switch.dart';
import 'package:tugas_flutter_2/Tugas_flutter_7/tanggal.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/pushnavigator/push.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/checkbox.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/dropdown.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/jam.dart';

class TugasFlutter7 extends StatefulWidget {
  const TugasFlutter7({super.key});

  @override
  State<TugasFlutter7> createState() => _TugasFlutter7State();
}

class _TugasFlutter7State extends State<TugasFlutter7> {
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    checkbox1(),
    switch1(),
    Dropdown(),
    Datepicker(),
    Jam(),
  ];

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptionsNav = <Widget>[
    Text("Dashboard New"),
    Text("A"),
    Text("A"),
  ];

  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
      _activeSource = "drawer";
    });
    context.pop();
  }

  String _activeSource = "drawer";
  bool isCheck = false;
  bool isCheckSwitch = false;
  String? dropdownSelect;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _activeSource == "drawer"
            ? _widgetOptions[_selectedIndexDrawer]
            : _widgetOptionsNav[_selectedIndex],
      ),
      appBar: AppBar(title: Text("TugasFlutter7")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("checkbox"),
              onTap: () {
                onItemTap(0);
              },
            ),
            ListTile(
              title: Text("switch"),
              onTap: () {
                onItemTap(1);
              },
            ),
            ListTile(
              title: Text("dropdown"),
              onTap: () {
                onItemTap(2);
              },
            ),
            ListTile(
              title: Text("tanggal"),
              onTap: () {
                onItemTap(3);
              },
            ),
            ListTile(
              title: Text("jam"),
              onTap: () {
                onItemTap(4);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // activeIcon: Icon(Icons.abc_outlined),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'About'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _activeSource = "nav";
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        // onTap: (value) {
        //   print(value);
        //   print("Nilai SelecetedIndex Before : $_selectedIndex");

        //   print("Nilai BotNav : $value");
        //   setState(() {
        //     _selectedIndex = value;
        //   });
        //   print("Nilai SelecetedIndex After: $_selectedIndex");
        // },
        // onTap: _onItemTapped,
      ),
    );
  }
}
