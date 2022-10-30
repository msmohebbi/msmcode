import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  MyAppBarState createState() => MyAppBarState();
}

class MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          TextButton(
            onPressed: () {
              ModalRoute.of(context)?.settings.name == '/'
                  ? DoNothingAction()
                  : Navigator.of(context).pushReplacementNamed("/");
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.home_filled,
                  color: ModalRoute.of(context)?.settings.name == '/'
                      ? Colors.tealAccent
                      : Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'HOME',
                  style: TextStyle(
                    color: ModalRoute.of(context)?.settings.name == '/'
                        ? Colors.tealAccent
                        : Colors.white,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          TextButton(
            onPressed: () {
              ModalRoute.of(context)?.settings.name == '/coursescreen'
                  ? DoNothingAction()
                  : Navigator.of(context).pushReplacementNamed("/coursescreen");
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.api_sharp,
                  color:
                      ModalRoute.of(context)?.settings.name == '/coursescreen'
                          ? Colors.tealAccent
                          : Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'COURSES',
                  style: TextStyle(
                    color:
                        ModalRoute.of(context)?.settings.name == '/coursescreen'
                            ? Colors.tealAccent
                            : Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
