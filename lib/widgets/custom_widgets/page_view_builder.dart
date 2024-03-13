import 'package:flutter/material.dart';

class CustomPageViewBuilder extends StatelessWidget {
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final int? pageCount;
  final PageController? pageController;
  final Axis? scrollDirection;
  final Function(int pageIndex)? onPageChanged;

  const CustomPageViewBuilder(
      {super.key,
      this.onPageChanged,
      required this.itemBuilder,
      this.pageCount,
      this.pageController,
      this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: itemBuilder,
      onPageChanged: onPageChanged,
      itemCount: pageCount,
      controller: pageController,
      scrollDirection: scrollDirection ?? Axis.horizontal,
    );
  }
}
