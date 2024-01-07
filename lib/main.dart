import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:msmcode/project_compact.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_strategy/url_strategy.dart';

import 'skill_compact.dart';

void main() {
  if (kIsWeb) {
    setPathUrlStrategy();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.tealAccent,
      )),
      title: 'MSMCode',
      routes: {
        "/": (ctx) => const MyHomePage(),
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
    var fontDelta = 0;
    // bool isHorizontal = false;
    if (widthPix > heightPix) {
      widthPix = heightPix;
      fontDelta += 2;
      // isHorizontal = true;
    }

    return Scaffold(
      // appBar: const PreferredSize(
      //   preferredSize: Size(double.infinity, kToolbarHeight),
      //   child: MyAppBar(),
      // ),

      body: SelectionArea(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: widthPix / 4,
                      ),
                      child: Image(
                        image: const ExactAssetImage(
                          "assets/images/headerimage.png",
                        ),
                        width: widthPix,
                        height: widthPix * (490 / 1080),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Mohammad Saeid Mohebbi',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontDelta + 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      'Full Stack Web & App Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: fontDelta + 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(kToolbarHeight * 0.1),
                      child: Material(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            launchUrl(
                              Uri.parse(
                                'https://twitter.com/msmohebbi76',
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(kToolbarHeight * 0.2),
                            child: Icon(
                              FontAwesome5.twitter,
                              size: (fontDelta * 3) + 25,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kToolbarHeight * 0.1),
                      child: Material(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            launchUrl(
                              Uri.parse(
                                'https://www.linkedin.com/in/msmohebbi',
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(kToolbarHeight * 0.2),
                            child: Icon(
                              FontAwesome5.linkedin,
                              size: (fontDelta * 3) + 25,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kToolbarHeight * 0.1),
                      child: Material(
                        borderRadius: BorderRadius.circular(12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            launchUrl(
                              Uri.parse(
                                'https://github.com/msmohebbi',
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(kToolbarHeight * 0.2),
                            child: Icon(
                              FontAwesome5.github,
                              size: (fontDelta * 3) + 25,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                Material(
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'mailto:msmohebbi76@gmail.com',
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(kToolbarHeight * 0.2),
                      child: Text(
                        'msmohebbi76@gmail.com',
                        style: TextStyle(
                          fontSize: fontDelta + 13,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: kToolbarHeight * 0.1),
                Material(
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'tel:+98-9135034803',
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(kToolbarHeight * 0.2),
                      child: Text(
                        '+98-9135034803',
                        style: TextStyle(
                          fontSize: fontDelta + 13,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: kToolbarHeight * 0.1),
                Material(
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'https://www.google.com/maps/@30.2839,57.0833,12z',
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(kToolbarHeight * 0.2),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            FontAwesome5.map_marker_alt,
                            size: fontDelta + 18,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(
                            width: kToolbarHeight * 0.1,
                          ),
                          Text(
                            'Kerman, Iran',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: fontDelta + 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                Container(
                  width: widthPix,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "A passionate Full-Stack Developer with 4.5+ years experience in Web & Backend developement using Django and 3.5+ years experience in cross platform developement using Flutter, enjoy learning new techs to solve people's problems and create awesome products and make it a better world with the help of technology.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 2,
                      fontSize: fontDelta + 13,
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
                  child: Text(
                    'SKILLS',
                    textAlign: TextAlign.center,
                    softWrap: false,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        letterSpacing: 3,
                        fontSize: fontDelta + 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: widthPixFixed - ((widthPixFixed - widthPix) / 2),
                  child: const Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      SkillCompact(
                        skill: "Flutter",
                        image: "assets/images/skills/fluttericon.png",
                      ),
                      SkillCompact(
                        skill: "Firebase",
                        image: "assets/images/skills/firebaseicon.png",
                      ),
                      SkillCompact(
                        skill: "Django",
                        image: "assets/images/skills/djangoicon.png",
                      ),
                      SkillCompact(
                        skill: "Django REST Framework",
                        image: "assets/images/skills/djangoresticon.png",
                      ),
                      SkillCompact(
                        skill: "FastAPI",
                        image: "assets/images/skills/fastapiicon.png",
                      ),
                      SkillCompact(
                        skill: "NGINX",
                        image: "assets/images/skills/nginxicon.png",
                      ),
                      SkillCompact(
                        skill: "PsotgreSQL",
                        image: "assets/images/skills/postgresicon.png",
                      ),
                      SkillCompact(
                        skill: "MySQL",
                        image: "assets/images/skills/mysqlicon.png",
                      ),
                      SkillCompact(
                        skill: "Docker",
                        image: "assets/images/skills/dockericon.png",
                      ),
                      SkillCompact(
                        skill: "Git",
                        image: "assets/images/skills/giticon.png",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Text(
                    'PROJECTS',
                    textAlign: TextAlign.center,
                    softWrap: false,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        letterSpacing: 3,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "UniDooni",
                  platforms: "Android, iOS, Web",
                  icon: "assets/images/projects/unidooniicon.png",
                  techs: 'Flutter - Django Rest Framework - PostgreSQL',
                  about:
                      'Academy Course Finder & Consulter Applications and WebApp',
                  start: '08/2022',
                  end: 'Present',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "Daric",
                  platforms: "Android, iOS",
                  icon: "assets/images/projects/daricicon.png",
                  techs: 'Flutter - Firebase',
                  about: 'Exchange Application',
                  start: '06/2023',
                  end: 'Present',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "PVFans",
                  platforms: "Android, iOS",
                  icon: "assets/images/projects/pvicon.png",
                  techs: 'Flutter - Firebase',
                  about: 'Social Media, Dating and Market Place Application',
                  start: '09/2023',
                  end: 'Present',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "Novin Taxi",
                  platforms: "Android, iOS, Web",
                  icon: "assets/images/projects/novintaxiicon.png",
                  techs: 'Flutter - Django Rest Framwork - PostgreSQL',
                  about:
                      'User & Driver Application for Inter-city Transportation',
                  start: '06/2023',
                  end: 'Present',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "Secret TV",
                  platforms: "Android, iOS, Web",
                  icon: "assets/images/projects/secrettvicon.png",
                  techs: 'Flutter - Django Rest Framework - PostgreSQL',
                  about:
                      'Social Media about Motivation and Coaching ,Applications and WebApp',
                  start: '06/2022',
                  end: '09/2022',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "Shakib Learn",
                  platforms: "Android, iOS, Web",
                  icon: "assets/images/projects/shakiblearnicon.png",
                  techs: 'Flutter - Django Rest Framework - MySQL',
                  about: 'E-Learning Cross-Platform Applications and WebApp',
                  start: '12/2021',
                  end: '05/2022',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "JooPeg",
                  platforms: "Android, iOS",
                  icon: "assets/images/projects/joopegicon.png",
                  techs: 'Flutter - Firebase',
                  about: 'Social Media Application',
                  start: '4/2023',
                  end: 'Present',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "Behnasr",
                  platforms: "Android",
                  icon: "assets/images/projects/behnasricon.png",
                  techs: 'Flutter',
                  about: 'OCR (Image to Text) Application',
                  start: '07/2023',
                  end: '09/2023',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "Sorena",
                  platforms: "Android",
                  icon: "assets/images/projects/sorenaicon.png",
                  techs: 'Flutter',
                  about: 'Organizing proples in groups and contact them',
                  start: '04/2022',
                  end: '05/2022',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "Delif",
                  platforms: "Android, iOS, Web",
                  icon: "assets/images/projects/delificon.png",
                  techs: 'Flutter - Django Rest Framework - MySQL',
                  about: 'Logestic and Market Place Apllications and WebApp',
                  start: '01/2021',
                  end: '10/2021',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "Sudus",
                  platforms: "Android, iOS",
                  icon: "assets/images/projects/sudus.png",
                  techs: 'Flutter - Firebase',
                  about: 'Cryptocurrency and Copy-Trading Platform',
                  start: '03/2020',
                  end: '9/2020',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "Dr Mohsen Valizadeh",
                  platforms: "Web",
                  icon: "assets/images/projects/drmvicon.png",
                  techs: 'Flutter - Django Rest Framework',
                  about: 'Appointment schedule & Info For Medical Clinic',
                  start: '04/2023',
                  end: '05/2023',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
                const ProjectCompact(
                  name: "DGAPco",
                  platforms: "Web",
                  icon: "assets/images/projects/dgapicon.png",
                  techs: 'Django - Postgresql - Bootstrap - jQuery',
                  about: 'E-commerce Website & Intera-Company Website',
                  start: '02/2019',
                  end: '07/2019',
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
