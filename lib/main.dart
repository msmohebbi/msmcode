import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import './course_screen.dart';
import './myappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MSMCode',
      routes: {
        "/": (ctx) => const MyHomePage(),
        "/coursescreen": (ctx) => const CourseScreen(),
      },
      // home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var widthPixFixed = MediaQuery.of(context).size.width;
    var heightPixFixed = MediaQuery.of(context).size.height;
    var widthPix = widthPixFixed;
    var heightPix = heightPixFixed;
    bool isHorizontal = false;
    if (widthPix > heightPix) {
      widthPix = heightPix;
      isHorizontal = true;
    }

    return Scaffold(
      // appBar: const PreferredSize(
      //   preferredSize: Size(double.infinity, kToolbarHeight),
      //   child: MyAppBar(),
      // ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: widthPix / 4,
                    ),
                    child: Image.asset(
                      "assets/images/headerimage.png",
                      width: widthPix,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: CircleAvatar(
                          radius: widthPix / 4,
                          foregroundImage: const ExactAssetImage(
                            "assets/images/msmicon.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Mohammad Saeid Mohebbi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(2.0),
                child: Center(
                  child: Text(
                    'Full Stack Web & App Developer',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black54),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      launchUrl(Uri.parse('https://twitter.com/msmohebbi76'));
                    },
                    child: const Icon(FontAwesome5.twitter),
                  ),
                  TextButton(
                    onPressed: () {
                      launchUrl(
                          Uri.parse('https://www.linkedin.com/in/msmohebbi'));
                    },
                    child: const Icon(FontAwesome5.linkedin),
                  ),
                  TextButton(
                    onPressed: () {
                      launchUrl(Uri.parse('https://github.com/msmohebbi'));
                    },
                    child: const Icon(FontAwesome5.github),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  launchUrl(Uri.parse('mailto:msmohebbi76@gmail.com'));
                },
                child: const Text('msmohebbi76@gmail.com'),
              ),
              TextButton(
                onPressed: () {
                  launchUrl(Uri.parse('tel:+98-9135034803'));
                },
                child: const Text('+98-9135034803'),
              ),
              TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(
                      'https://www.google.com/maps/@30.2839,57.0833,12z'));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(FontAwesome5.map_marker_alt, size: 18),
                    SizedBox(
                      width: 7,
                    ),
                    Text('Kerman, Iran'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: widthPix,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: const Text(
                  "A passionate Full-Stack Developer with 4+ years experience in Web & Backend developement using Django and 3+ years experience in cross platform developement using Flutter, enjoy learning new techs to solve people's problems and create awesome products and make it a better world with the help of technology.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 2,
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: const Text(
                  'SKILLS',
                  textAlign: TextAlign.center,
                  softWrap: false,
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 3,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/fluttericon.png",
                        ),
                      ),
                      Text("Flutter"),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/firebaseicon.png",
                        ),
                      ),
                      Text("Firebase"),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/djangoicon.png",
                        ),
                      ),
                      Text('Django'),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/djangoresticon.png",
                        ),
                      ),
                      Text('Django REST Framework'),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/fastapiicon.png",
                        ),
                      ),
                      Text('FastAPI'),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/nginxicon.png",
                        ),
                      ),
                      Text('NGINX'),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/postgresicon.png",
                        ),
                      ),
                      Text('PsotgreSQL'),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/mysqlicon.png",
                        ),
                      ),
                      Text('MySQL'),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/dockericon.png",
                        ),
                      ),
                      Text('Docker'),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.white10,
                        radius: 70,
                        foregroundImage: ExactAssetImage(
                          "assets/images/giticon.png",
                        ),
                      ),
                      Text('Git'),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: const Text(
                  'PROJECTS',
                  textAlign: TextAlign.center,
                  softWrap: false,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 3,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white10,
                      radius: isHorizontal ? widthPix / 10 : widthPix / 4,
                      foregroundImage: const ExactAssetImage(
                        "assets/images/shakiblearnicon.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // TextButton(
                        //   onPressed: () {
                        //     launchUrl(Uri.parse('http://shakiblearn.ir'));
                        //   },
                        //   child: const Text(
                        //     'www.shakiblearn.ir',
                        //     textAlign: TextAlign.left,
                        //   ),
                        // ),
                        const SizedBox(
                          height: 5,
                        ),
                        // Text(
                        //   'Company: Shakiblearn',
                        //   textAlign: TextAlign.left,
                        // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        const Text(
                          'Technologies:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Flutter - Django Rest Framework - MySQL',
                          textAlign: TextAlign.left,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Description:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'E-Learning Cross-Platform Applications and Web Application',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("View More"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white10,
                      radius: isHorizontal ? widthPix / 10 : widthPix / 4,
                      foregroundImage: const ExactAssetImage(
                        "assets/images/dgapicon.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // TextButton(
                        //   onPressed: () {
                        //     launchUrl(Uri.parse('http://dgapco.ir'));
                        //   },
                        //   child: const Text(
                        //     'www.DGAPCO.ir',
                        //     textAlign: TextAlign.left,
                        //   ),
                        // ),
                        const SizedBox(
                          height: 5,
                        ),
                        // Text(
                        //   'Company: Diba Gostar Aramis Panah',
                        //   textAlign: TextAlign.left,
                        // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        const Text(
                          'Technologies:',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Django - Postgresql - Bootstrap - jQuery',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Description:',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'E-commerce Website & Intera-Company Website',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("View More"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: Colors.white10,
                      radius: isHorizontal ? widthPix / 10 : widthPix / 4,
                      foregroundImage: const ExactAssetImage(
                        "assets/images/sorenaicon.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // // Text(
                        // //   'Name: Sorena - Organize peoples',
                        // //   textAlign: TextAlign.left,
                        // // ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // Text(
                        //   'Company: GolGohar - engineer Sohrabi',
                        //   textAlign: TextAlign.left,
                        // ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Technologies:',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Flutter',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Description:',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Organizing proples in groups and contact them',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("View More"),
                        ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // TextButton(
                        //   onPressed: () {
                        //     launchUrl(Uri.parse(
                        //         'https://cafebazaar.ir/app/com.pishranesh.sorena'));
                        //   },
                        //   child: Image.asset(
                        //     'assets/images/bazaar.png',
                        //     height: 50,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
