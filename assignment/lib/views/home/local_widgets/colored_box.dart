import 'package:assignment/constants/constants.dart';
import 'package:assignment/theme/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ColorChangingBox extends StatelessWidget {
  final VoidCallback onTap;
  final Color boxColor;

  const ColorChangingBox(
      {Key? key, required this.boxColor, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Sizes.boxSize,
        width: Sizes.boxSize,
        decoration: BoxDecoration(
            color: boxColor,
            borderRadius:
                const BorderRadius.all(Radius.circular(Sizes.boxRadius))),
        child: Center(
            child: Text(
          "Tap!",
          style: TextStyle(color: AppColors.white),
        )),
      ),
    );
  }
}
