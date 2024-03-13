import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  final num? widthRatio;
  final num? heightRatio;
  final Widget? child;
  const CustomSizedBox({
    super.key,
    this.heightRatio,
    this.widthRatio,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return SizedBox(
      width: width * (widthRatio ?? 0.01),
      height: height * (heightRatio ?? 0.01),
      child: child,
    );
  }
}
