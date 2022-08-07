import 'package:flutter/material.dart';

class UserInformationScreen extends StatefulWidget {
  const UserInformationScreen({Key? key}) : super(key: key);

  static const String routeName = '/user-information';

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  final TextEditingController nameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                    ),
                    radius: 64,
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_a_photo),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: size.width * 0.85,
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.done),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
