import 'package:flutter/material.dart';
import 'package:testing_arch/features/second_b/data/models/user_model.dart';
    
class UserListView extends StatelessWidget {
  final int userCount;
  final List<UserModel> users;

  const UserListView({ super.key, required this.userCount, required this.users });
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              itemCount: userCount,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            );
  }
}