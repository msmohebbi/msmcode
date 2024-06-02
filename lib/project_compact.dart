import 'package:flutter/material.dart';
import 'package:msmcode/project_model.dart';

class ProjectCompact extends StatefulWidget {
  const ProjectCompact({
    super.key,
    required this.project,
  });
  final AppProject project;

  @override
  State<ProjectCompact> createState() => _ProjectCompactState();
}

class _ProjectCompactState extends State<ProjectCompact> {
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

    return Container(
      margin: const EdgeInsets.symmetric(vertical: kToolbarHeight * 0.1),
      width: widthPixFixed - ((widthPixFixed - widthPix) / 2),
      padding: const EdgeInsets.symmetric(
          vertical: kToolbarHeight * 0.1, horizontal: kToolbarHeight * 0.2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Theme.of(context).hintColor.withAlpha(15),
          ),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.of(context)
                  .pushNamed('/projects/${widget.project.slug}');
            },
            child: Padding(
              padding: const EdgeInsets.all(kToolbarHeight * 0.2),
              child: Flex(
                direction: isHorizontal ? Axis.horizontal : Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: isHorizontal ? 1 : 0,
                    child: SizedBox(
                      height: isHorizontal
                          ? kToolbarHeight * 2
                          : kToolbarHeight * 3,
                      child: Image(
                        image: ExactAssetImage(
                          widget.project.iconPath,
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: kToolbarHeight * 0.2,
                      height: kToolbarHeight * 0.4),
                  Expanded(
                    flex: isHorizontal ? 1 : 0,
                    child: Column(
                      children: [
                        Text(
                          widget.project.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      width: kToolbarHeight * 0.2,
                      height: kToolbarHeight * 0.4),
                  Expanded(
                    flex: isHorizontal ? 1 : 0,
                    child: Column(
                      children: [
                        const Text(
                          "Platforms",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: kToolbarHeight * 0.2),
                        Text(
                          widget.project.platforms.join(" - "),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      width: kToolbarHeight * 0.2,
                      height: kToolbarHeight * 0.4),
                  Expanded(
                    flex: isHorizontal ? 2 : 0,
                    child: Column(
                      children: [
                        const Text(
                          'Description:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: kToolbarHeight * 0.2),
                        Text(
                          widget.project.about,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      width: kToolbarHeight * 0.2,
                      height: kToolbarHeight * 0.4),
                  Expanded(
                    flex: isHorizontal ? 2 : 0,
                    child: Column(
                      children: [
                        const Text(
                          'Technologies:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: kToolbarHeight * 0.2),
                        Text(
                          widget.project.techs.values.join(" - "),
                          textAlign: TextAlign.center,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      width: kToolbarHeight * 0.2,
                      height: kToolbarHeight * 0.4),
                  Expanded(
                    flex: isHorizontal ? 1 : 0,
                    child: Column(
                      children: [
                        const Text(
                          'Start & End',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: kToolbarHeight * 0.2),
                        Text(
                          "${widget.project.start} - ${widget.project.end}",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      width: kToolbarHeight * 0.2,
                      height: kToolbarHeight * 0.4),
                  Expanded(
                    flex: isHorizontal ? 1 : 0,
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                '/projects/${widget.project.slug}',
                              );
                            },
                            child: const Row(
                              children: [
                                Text("View More"),
                                SizedBox(width: kToolbarHeight * 0.1),
                                Icon(Icons.arrow_forward_ios, size: 15)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: kToolbarHeight * 0.2,
                      height: kToolbarHeight * 0.4),
                  // TextButton(
                  //   onPressed: () {
                  //     launchUrl(Uri.parse('http://shakiblearn.ir'));
                  //   },
                  //   child: const Text(
                  //     'www.shakiblearn.ir',
                  //     textAlign: TextAlign.left,
                  //   ),
                  // ),
                  // Text(
                  //   'Company: Shakiblearn',
                  //   textAlign: TextAlign.left,
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
