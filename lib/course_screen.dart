import 'package:flutter/material.dart';

import './myappbar.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  CourseScreenState createState() => CourseScreenState();
}

class CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: MyAppBar(),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
                leading: Image.asset(
                  "assets/images/fluttericon.png",
                ),
                title: const Text('Dart & Flutter 2 Complete Course'),
                backgroundColor: Colors.grey[100],
                children: [
                  ListTile(
                    tileColor: Colors.grey[100],
                    subtitle: const Text("Start Date: 2021/06/07"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
              title: const Text('Python & Django Complete Course'),
              leading: Image.asset(
                "assets/images/djangoicon.png",
              ),
              backgroundColor: Colors.grey[100],
              children: [
                ListTile(
                  tileColor: Colors.grey[100],
                  subtitle: const Text("Start Date: 2021/06/07"),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
