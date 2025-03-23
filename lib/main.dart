import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:msmcode/project_compact.dart';
import 'package:msmcode/project_data.dart';
import 'package:msmcode/project_screen.dart';
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
        surface: Colors.white,
      )),
      title: 'MSMCode',
      routes: {
        "/": (ctx) => const MyHomePage(),
      },
      onGenerateRoute: (route) {
        if (route.name != null) {
          var finalRouteName = route.name!;
          if (finalRouteName.endsWith("/")) {
            finalRouteName =
                finalRouteName.substring(0, finalRouteName.length - 2);
          }

          var parts = finalRouteName.split("/").length;
          if (parts == 3 && finalRouteName.split("/")[1] == "projects") {
            var destin = finalRouteName.split("/")[2];
            return MaterialPageRoute<void>(
              settings: route,
              builder: (BuildContext context) => ProjectScreen(slug: destin),
            );
          }
        }
        return MaterialPageRoute(
          builder: (context) {
            return const MyHomePage();
          },
        );
      },
      // home: MyHomePage(),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
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
                Material(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).colorScheme.primary,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {
                      launchUrl(
                        Uri.parse('/assets/resume/MOHAMMAD SAEID MOHEBBI.pdf'),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(kToolbarHeight * 0.2),
                      child: Text(
                        'Download PDF Resume',
                        style: TextStyle(
                          fontSize: fontDelta + 13,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: kToolbarHeight * 0.3,
                ),
                Container(
                  width: widthPix,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "A passionate Full-Stack Developer with 5+ years experience in Web & Backend developement using Django and 4+ years experience in cross platform developement using Flutter, enjoy learning new techs to solve people's problems and create awesome products and make it a better world with the help of technology.",
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
                    'SKILLS (14)',
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
                        image: "assets/images/skills/flutter.png",
                      ),
                      SkillCompact(
                        skill: "Firebase",
                        image: "assets/images/skills/firebase.png",
                      ),
                      SkillCompact(
                        skill: "Django",
                        image: "assets/images/skills/django.png",
                      ),
                      SkillCompact(
                        skill: "Django REST Framework",
                        image: "assets/images/skills/djangorest.png",
                      ),
                      SkillCompact(
                        skill: "Python",
                        image: "assets/images/skills/python.png",
                      ),
                      SkillCompact(
                        skill: "FastAPI",
                        image: "assets/images/skills/fastapi.png",
                      ),
                      SkillCompact(
                        skill: "Azure",
                        image: "assets/images/skills/azure.png",
                      ),
                      SkillCompact(
                        skill: "AWS",
                        image: "assets/images/skills/aws.png",
                      ),
                      SkillCompact(
                        skill: "NGINX",
                        image: "assets/images/skills/nginx.png",
                      ),
                      SkillCompact(
                        skill: "MongoDB",
                        image: "assets/images/skills/mongodb.png",
                      ),
                      SkillCompact(
                        skill: "PostgreSQL",
                        image: "assets/images/skills/postgres.png",
                      ),
                      SkillCompact(
                        skill: "MySQL",
                        image: "assets/images/skills/mysql.png",
                      ),
                      SkillCompact(
                        skill: "Docker",
                        image: "assets/images/skills/docker.png",
                      ),
                      SkillCompact(
                        skill: "Git",
                        image: "assets/images/skills/git.png",
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
                    'PROJECTS (12)',
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
                  height: kToolbarHeight * 0.1,
                ),
                ...allProjects.map((e) => ProjectCompact(
                      project: e,
                    )),
                const SizedBox(
                  height: kToolbarHeight * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
