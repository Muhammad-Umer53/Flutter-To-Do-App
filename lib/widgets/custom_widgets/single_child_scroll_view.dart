import 'package:flutter/material.dart';

class CustomSingleChildScrollView extends StatelessWidget {
  final ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;
  final Widget? child;
  const CustomSingleChildScrollView(
      {super.key, this.keyboardDismissBehavior, this.child});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior:
          keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.onDrag,
      child: child,
    );
  }
}
