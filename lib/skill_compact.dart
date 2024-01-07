import 'package:flutter/material.dart';

class SkillCompact extends StatelessWidget {
  final String skill;
  final String image;

  const SkillCompact({super.key, required this.skill, required this.image});

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

    return Padding(
      padding: const EdgeInsets.all(kToolbarHeight * 0.1),
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
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(kToolbarHeight * 0.2),
              child: Column(
                children: [
                  SizedBox(
                    width: 140,
                    height: 140,
                    child: Image(
                      image: ExactAssetImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: kToolbarHeight * 0.1),
                  SizedBox(
                    width: 140,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        skill,
                        style: TextStyle(
                          fontSize: fontDelta + 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: kToolbarHeight * 0.2)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
