import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TugasFlutter6 extends StatefulWidget {
  const TugasFlutter6({super.key});

  @override
  State<TugasFlutter6> createState() => _TugasFlutter6State();
}

class _TugasFlutter6State extends State<TugasFlutter6> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwwordcontroller = TextEditingController();
  @override
  void initState() {
    super.initState();
    // Inisialisasi controller atau variabel lainnya jika diperlukan
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00224F),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF00224F),
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 18,
            // fontFamily: "FiraSans",
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Icon(Icons.arrow_back_ios, size: 24, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Center(),
                  Padding(padding: const EdgeInsets.all(8)),
                  SizedBox(height: 40),
                  Text(
                    'Hello Welcome Back',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Welcome back please',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    'sign in again',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 80),
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailcontroller,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        labelText: 'Email',
                        // border: OutlineInputBorder(
                        //   // borderRadius: BorderRadius.circular(16),
                        // ),
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email tidak boleh kosong";
                        }
                        if (!value.contains("@")) {
                          return "Email tidak valid";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: passwwordcontroller,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock, color: Colors.white),
                        labelText: 'Password',
                        // border: OutlineInputBorder(),
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password tidak boleh kosong";
                        }
                        if (value.length < 6) {
                          return 'Password pendek (minimal 6 karakter)';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        //Error dan sukses menggunakan ScaffoldMessenger dan formKey
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Form Validasi Berhasil")),
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Email anda tidak sesuai"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("Silakan Masukkan email yang valid"),
                                    SizedBox(height: 20),
                                    Lottie.asset(
                                      'assets/images/animations/error.json',
                                      width: 90,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    child: Text("Batal"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: Text("Ok, Siap"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 60),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00224F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 48),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 0.5)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "or",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Expanded(child: Divider(thickness: 0.5)),
                ],
              ),
              const SizedBox(height: 24),
              // Center(),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(),
                  // Tombol Facebook
                  ElevatedButton.icon(
                    onPressed: () {
                      print("Login with Facebook");
                    },
                    icon: Icon(Icons.facebook, color: Colors.white),
                    label: Text(
                      "Facebook",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF11325C),
                      minimumSize: Size(300, 60),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {
                      print("Login with Gmail");
                    },
                    icon: Image.asset(
                      "assets/images/icons/ikongoogle.png",
                      height: 16,
                      width: 16,
                    ),
                    label: Text(
                      "Gmail",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF11325C),
                      minimumSize: Size(300, 60),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Center(
                child: GestureDetector(
                  onTap: () {
                    print('Navigasi ke halaman daftar');
                  },
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
