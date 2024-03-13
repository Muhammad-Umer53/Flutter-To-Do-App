import '../../utilities/imports.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? contentWidget;
  final double? bodyPaddingAll;
  final EdgeInsetsGeometry? bodyPadding;
  final PreferredSizeWidget? appBar;
  final double? bodyMaxWidth;
  final double? bodyMinWidth;
  final double? bodyWidth;
  final double? bodyHeight;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomNavigationBar;
  final bool shouldContentCentered;
  final Color? bgColor;

  const CustomScaffold({
    super.key,
    this.contentWidget,
    this.bodyPaddingAll,
    this.bodyPadding,
    this.appBar,
    this.bodyMaxWidth,
    this.bodyMinWidth,
    this.bodyWidth,
    this.bodyHeight,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.bgColor,
    this.shouldContentCentered = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
      appBar: appBar,
      backgroundColor: bgColor,
      body: shouldContentCentered
          ? Center(
              child: Container(
                width: bodyWidth,
                height: bodyHeight,
                constraints: BoxConstraints(
                    maxWidth: bodyMaxWidth ?? AppConsts.maxWidth),
                padding: bodyPadding ?? EdgeInsets.all(bodyPaddingAll ?? 12),
                child: contentWidget,
              ),
            )
          : Container(
              width: bodyWidth,
              height: bodyHeight,
              constraints:
                  BoxConstraints(maxWidth: bodyMaxWidth ?? AppConsts.maxWidth),
              padding: bodyPadding ?? EdgeInsets.all(bodyPaddingAll ?? 12),
              child: contentWidget,
            ),
    );
  }
}
