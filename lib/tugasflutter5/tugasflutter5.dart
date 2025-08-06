import 'package:flutter/material.dart';

// class Flutter5 extends StatefulWidget {
//   const Flutter5({super.key});

//   @override
//   State<Flutter5> createState() => _Flutter5State();
// }

// class _Flutter5State extends State<Flutter5> {
//   int counter = 0;
//   String name = "Ciluk BAA!!!!!!!!!!!!!";
//   bool showName = true;
//   @override
//   Widget build(BuildContext context) {
//     print("Ulang");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "tugas flutter 5", 
//           style: TextStyle(
//             fontSize: 18,
//             color: const Color.fromARGB(255, 161, 204, 152)
//           )
//         ),
//         backgroundColor: const Color.fromARGB(255, 7, 52, 255),
//       ),
//     );
//   }
// }


class Flutter5 extends StatefulWidget {


  @override
  State<Flutter5> createState() => _Flutter5State();
}

class _Flutter5State extends State<Flutter5> {
  int counter = 0;
  bool tampilkan = false;
  bool warnaDisukai = false;
  bool tampilkanNamaTextButton = false;
  bool tampilkanNamaInkWell = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 249, 239),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tugas 5 Flutter - State"),
        backgroundColor: const Color.fromARGB(255, 230, 121, 5),
        foregroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          counter++;
          print(counter);
        },
      ),
      body: Stack(
        children: [
          Image.asset("assets/images/seni_biru.jpg", fit: BoxFit.cover, height: double.infinity, width: double.infinity),
          Column( 
            children: [
              Center(),
              Text("1. Elevated Button", style: TextStyle(fontSize: 16,color: Colors.white)),
              SizedBox(height: 8),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 7, 205, 255)),
                ),
                onPressed: () {
                  setState(() {
                    tampilkan = !tampilkan;
                    print("tampillan");
                    print(tampilkan);
                  });
                  counter++;
                },
                child: Text(
                  tampilkan
                      ? "Nama saya: muhammad ali akbar"
                      : "ElevatedButton - Tampilkan Nama",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 8),
              Text("2. IconButton", style: TextStyle(fontSize: 16,color: Colors.white)),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(6),
                height: 60,
                width: 80,
                child: IconButton(
                  icon: const Icon(Icons.favorite),
                  color: warnaDisukai ? const Color.fromARGB(255, 236, 228, 228) : const Color.fromARGB(255, 204, 195, 195),
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      warnaDisukai = !warnaDisukai;
                      print("warnaDisukai");
                      print(warnaDisukai);
                    });
                  },
                ),
              ),
              SizedBox(height: 8),
              if (warnaDisukai)
                Text(
                  'cinta itu buta',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 240, 240, 243),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              SizedBox(height: 8),
              Text("3. TextButton", style: TextStyle(fontSize: 16,color: Colors.white)),
              TextButton(
                onPressed: () {
                  setState(() {
                    tampilkanNamaTextButton = !tampilkanNamaTextButton;
                  });
                  print("tampilkanNamaTextButton");
                  print(tampilkanNamaTextButton);
                },
                child: Text(
                  tampilkanNamaTextButton
                      ? "selamat datang bapak ibu"
                      : "TextButton - Tampilkan",
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
              // SizedBox(height: 8),
              Text("5. InkWell", style: TextStyle(fontSize: 16,color: Colors.white)),
              SizedBox(height: 8),
              InkWell(
                onTap: () {
                  setState(() {
                    tampilkanNamaInkWell = !tampilkanNamaInkWell;
                  });
                  print("tampilkanNamaInkWell");
                  print(tampilkanNamaInkWell);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 7, 185, 255),
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      tampilkanNamaInkWell
                          ? "lahir nya pendidikan karena sadarnya kebodohan"
                          : "InkWell - Tampilkan quotes",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text("6. GestureDetector", style: TextStyle(fontSize: 16,color: Colors.white)),
              SizedBox(height: 8),
              GestureDetector(
                onDoubleTap: () {
                  print("Ditekan dua kali");
                },
                onTap: () {
                  print("Ditekan sekali");
                },
                onLongPress: () {
                  print("Tahan lama");
                },
                child: Container(
                  // color: Colors.amber, //Cause Error
                  padding: const EdgeInsets.all(8),
                  margin: EdgeInsets.all(2),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromARGB(255, 7, 255, 110),
                  ),
                  child: const Center(
                    child: Text(
                      "Tekan Aku",
                      style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}