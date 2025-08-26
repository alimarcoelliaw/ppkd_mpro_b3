import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/tugas_flutter_14/api/get_post_user.dart';
import 'package:tugas_flutter_2/tugas_flutter_14/model/post_user_model.dart';
// import 'package:ppkd_b_3/day_23/api/get_user.dart';
// import 'package:ppkd_b_3/day_23/model/user_model.dart';

class PostUserAPI extends StatefulWidget {
  const PostUserAPI({super.key});
  static const id = "/get_api_screen";

  @override
  State<PostUserAPI> createState() => _PostUserAPIState();
}

class _PostUserAPIState extends State<PostUserAPI> {
  @override
  // void initState() {
  //   super.initState();
  //   getUser();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<List<Welcome>>(
              future: getUser(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasData) {
                  final users = snapshot.data as List<Welcome>;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      final dataUser = users[index];
                      // print(users);
                      return ListTile(
                        // leading: Image.network(dataUser.avatar ?? ""),
                        title: Text(dataUser.title ?? ""),
                        subtitle: Text(dataUser.body ?? ""),
                      );
                    },
                  );
                } else {
                  return Text("Gagal Memuat data");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
