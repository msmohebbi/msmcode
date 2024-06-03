import 'package:flutter/material.dart';
import 'package:msmcode/project_data.dart';
import 'package:msmcode/skill_compact.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key, required this.slug});
  final String slug;

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    var widthPixFixed = MediaQuery.of(context).size.width;
    var heightPixFixed = MediaQuery.of(context).size.height;
    var widthPix = widthPixFixed;
    int fontDelta = 0;
    var heightPix = heightPixFixed;
    bool isHorizontal = false;
    if (widthPix > heightPix ||
        MediaQuery.of(context).orientation == Orientation.landscape) {
      fontDelta = 1;
      widthPix = heightPix;
      isHorizontal = true;
    }
    var cProject =
        allProjects.firstWhere((element) => element.slug == widget.slug);
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          title: Text(cProject.name),
        ),
        backgroundColor: Theme.of(context).hintColor.withAlpha(10),
        body: SingleChildScrollView(
          child: Flex(
            crossAxisAlignment: CrossAxisAlignment.start,
            direction: isHorizontal ? Axis.horizontal : Axis.vertical,
            children: [
              Expanded(
                flex: isHorizontal ? 1 : 0,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.01,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.02,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).hintColor.withAlpha(100),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            cProject.iconPath,
                            width: 150,
                          ),
                          SizedBox(width: widthPix * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cProject.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontDelta + 20,
                                ),
                              ),
                              SizedBox(height: widthPix * 0.02),
                              Text(
                                'Mohammad Saeid Mohebbi',
                                style: TextStyle(
                                  fontSize: fontDelta + 18,
                                  color: Theme.of(context)
                                      .hintColor
                                      .withAlpha(150),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.01,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.02,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).hintColor.withAlpha(100),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Images',
                                style: TextStyle(
                                  fontSize: fontDelta + 18,
                                  color: Theme.of(context)
                                      .hintColor
                                      .withAlpha(150),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: kToolbarHeight * 0.2),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...cProject.imageList.map(
                                  (e) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kToolbarHeight * 0.1,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            barrierDismissible: true,
                                            builder: (context) {
                                              return Dialog(
                                                backgroundColor:
                                                    Theme.of(context).cardColor,
                                                insetPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                  child: IntrinsicHeight(
                                                    child: InteractiveViewer(
                                                      child: Image.asset(
                                                        e,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                              color: Theme.of(context)
                                                  .hintColor
                                                  .withAlpha(100),
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: Image.asset(
                                              e,
                                              height: heightPix * 0.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: kToolbarHeight * 0.2),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.01,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.02,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).hintColor.withAlpha(100),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Introduction',
                                style: TextStyle(
                                  fontSize: fontDelta + 18,
                                  color: Theme.of(context)
                                      .hintColor
                                      .withAlpha(150),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: widthPix * 0.01,
                          ),
                          Text(
                            cProject.introduction,
                            style: TextStyle(
                              fontSize: fontDelta + 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: isHorizontal ? 1 : 0,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.01,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.02,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).hintColor.withAlpha(100),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Download',
                                style: TextStyle(
                                  fontSize: fontDelta + 18,
                                  color: Theme.of(context)
                                      .hintColor
                                      .withAlpha(150),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: widthPix * 0.01,
                          ),
                          Wrap(
                            spacing: widthPix * 0.01,
                            runSpacing: widthPix * 0.01,
                            children: [
                              ...cProject.download.map(
                                (e) {
                                  return InkWell(
                                    onTap: () {
                                      launchUrl(
                                        Uri.parse(
                                          e['link']!,
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      height: widthPix * 0.1,
                                      width: widthPix * 0.33,
                                      child: Image.asset(
                                        "assets/images/badges/${e['slug']}_dark.png",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.01,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: widthPix * 0.02,
                        vertical: widthPix * 0.02,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Theme.of(context).hintColor.withAlpha(100),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Technologies',
                                style: TextStyle(
                                  fontSize: fontDelta + 18,
                                  color: Theme.of(context)
                                      .hintColor
                                      .withAlpha(150),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: widthPix * 0.01,
                          ),
                          Wrap(
                            spacing: widthPix * 0.01,
                            runSpacing: widthPix * 0.01,
                            children: [
                              ...cProject.techs.entries.map(
                                (e) {
                                  return SkillCompact(
                                    image: "assets/images/skills/${e.key}.png",
                                    skill: e.value,
                                  );
                                },
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
