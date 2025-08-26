import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/Tugas_flutter_7/switch.dart';
import 'package:tugas_flutter_2/Tugas_flutter_7/tanggal.dart';
import 'package:tugas_flutter_2/tugas_flutter_10/home.a.dart';
import 'package:tugas_flutter_2/tugas_flutter_14/view/get_api_post_user.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/pushnavigator/push.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/tugas_flutter_11/views/list_user.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/aboutapp.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/checkbox.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/dashboard.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/dropdown.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/jam.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/logout.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/tugas_flutter_9/listviewmap.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/tugas_flutter_9/modelproduk.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/tugas_flutter_9/produk_model.dart';

class TugasFlutter7 extends StatefulWidget {
  const TugasFlutter7({super.key});
  static const id = "/main";
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
    Listviewtugas1(),
    Listviewmap(),
    Model1(),
    HomeFirst(),
    ListUserScreen(),
    PostUserAPI(),
  ];

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptionsNav = <Widget>[
    DashBoard(),
    AboutApp(),
    LogoutApp(),
  ];

  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
      _activeSource = "drawer";
    });
    context.pop();
  }

  void onItemTapNav(int index) {
    setState(() {
      _selectedIndex = index;
      _activeSource = "nav";
    });
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
      appBar: AppBar(title: Text("investasi barang altarfagasi")),
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
            ListTile(
              title: Text("listview"),
              onTap: () {
                onItemTap(5);
              },
            ),
            ListTile(
              title: Text("listview map"),
              onTap: () {
                onItemTap(6);
              },
            ),
            ListTile(
              title: Text("Model Produk"),
              onTap: () {
                onItemTap(7);
              },
            ),
            ListTile(
              title: Text("tugas_flutter_10"),
              onTap: () {
                onItemTap(8);
              },
            ),
            ListTile(
              title: Text("List User"),
              onTap: () {
                onItemTap(9);
              },
            ),
            ListTile(
              title: Text("Post User API"),
              onTap: () {
                onItemTap(10);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
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
