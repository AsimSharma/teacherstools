import 'package:flutter/material.dart';

class ImagesContainer extends StatelessWidget {
  const ImagesContainer({
    super.key,
    required this.height,
    required this.width,
    required this.images,
    this.backGroundColors = Colors.red,
  });
  final double height, width;
  final String images;
  final Color backGroundColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backGroundColors,
          // border: Border.all(width: 1, color: disabledColor),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(images))),
    );
  }
}
