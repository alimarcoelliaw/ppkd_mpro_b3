import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/tugas_flutter_14/api/get_post_user.dart';
import 'package:tugas_flutter_2/tugas_flutter_14/model/post_user_model.dart';

class PostUserAPI extends StatefulWidget {
  const PostUserAPI({super.key});
  static const id = "/get_api_screen";

  @override
  State<PostUserAPI> createState() => _PostUserAPIState();
}

class _PostUserAPIState extends State<PostUserAPI> {
  TextEditingController searchController = TextEditingController();
  List<Welcome> allUsers = [];
  List<Welcome> filteredUsers = [];

  // Search Functionality
  @override
  void initState() {
    super.initState();
    loadUsers();
    searchController.addListener(_onSearchChanged);
  }

  void _refreshData() {
    setState(() {});
  }

  void _onSearchChanged() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredUsers = allUsers
          .where(
            (user) =>
                (user.title ?? "").toLowerCase().contains(query) ||
                (user.body ?? "").toLowerCase().contains(query),
          )
          .toList();
    });
  }

  Future<void> loadUsers() async {
    final users = await getUser();
    setState(() {
      allUsers = users;
      filteredUsers = users;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshData,
        child: const Icon(Icons.refresh),
      ),
      // appBar: AppBar(title: const Text("Post User API with Search")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Cari berdasarkan title / body...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          // List Data
          Expanded(
            child: allUsers.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : filteredUsers.isEmpty
                ? const Center(child: Text("Data tidak ditemukan"))
                : ListView.builder(
                    itemCount: filteredUsers.length,
                    itemBuilder: (context, index) {
                      final dataUser = filteredUsers[index];
                      return ListTile(
                        title: Text(dataUser.title ?? ""),
                        subtitle: Text(dataUser.body ?? ""),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
