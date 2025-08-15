import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/tugas_flutter_10/textform.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/tugas_flutter_11/model/user.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/tugas_flutter_11/sqflite/Db.helper.dart';

class ListUserScreen extends StatefulWidget {
  const ListUserScreen({super.key});

  @override
  State<ListUserScreen> createState() => _ListUserScreenState();
}

class _ListUserScreenState extends State<ListUserScreen> {
  List<User> users = [];
  @override
  void initState() {
    super.initState();
    getUser();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  get id => null;

  Future<void> getUser() async {
    final dataUser = await DbHelper.getAllUsers();
    print(dataUser);
    setState(() {
      users = dataUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormConst(hintText: "Nama", controller: nameController),
            TextFormConst(hintText: "Email", controller: emailController),
            TextFormConst(hintText: "Password", controller: passwordController),
            ElevatedButton(
              onPressed: () async {
                final email = emailController.text.trim();
                final password = passwordController.text.trim();
                final name = nameController.text.trim();
                if (email.isEmpty || password.isEmpty || name.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Email, Password, dan Nama tidak boleh kosong",
                      ),
                    ),
                  );

                  return;
                }
                final user = User(
                  id: id,
                  email: email,
                  password: password,
                  name: name,
                );
                await DbHelper.registerUser(user);
                Future.delayed(const Duration(seconds: 1)).then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Pendaftaran berhasil")),
                  );
                });
                getUser();
                setState(() {});
              },
              child: Text("Simpan Data"),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                final dataUserLogin = users[index];
                return ListTile(
                  title: Text(dataUserLogin.name),
                  subtitle: Column(
                    children: [
                      Text(dataUserLogin.email),
                      Text(dataUserLogin.password),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          ///
                          // DbHelper.updateUser();
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Edit Data'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormConst(
                                    controller: nameController
                                      ..text = dataUserLogin.name,
                                    hintText: 'Nama',
                                  ),
                                  SizedBox(height: 12),
                                  TextFormConst(
                                    controller: emailController
                                      ..text = dataUserLogin.email,
                                    hintText: 'Email',
                                  ),
                                  SizedBox(height: 12),

                                  TextFormConst(
                                    controller: passwordController
                                      ..text = dataUserLogin.password,
                                    hintText: 'Password',
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    final dataUser = User(
                                      id: dataUserLogin.id!,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      name: nameController.text.trim(),
                                    );
                                    DbHelper.updateUser(dataUser);
                                    getUser();
                                    Navigator.pop(context);
                                  },
                                  child: Text('Simpan'),
                                ),
                                ElevatedButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Batal'),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () async {
                          ///
                          await DbHelper.deleteUser(dataUserLogin.id!);
                          getUser();
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
