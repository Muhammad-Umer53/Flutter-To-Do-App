import 'imports.dart';

class CustomNavigation {
  static void navigatePush(BuildContext context, Widget targetPage) =>
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => targetPage,
          ));

  static void navigatePushReplace(BuildContext context, Widget targetPage) =>
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => targetPage,
          ));

  static void navigatePop(BuildContext context) => Navigator.pop(context);

  static void removeAllPages(BuildContext context) =>
      Navigator.popUntil(context, (route) => route.isFirst);

  static Timer replacePageTimed(
          BuildContext context, Widget targetPage, int? seconds) =>
      Timer(
        Duration(seconds: seconds ?? 2),
        () => CustomNavigation.navigatePushReplace(context, targetPage),
      );
}
