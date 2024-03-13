import '../../utilities/imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _removeSplash() =>
      CustomNavigation.replacePageTimed(context, const OnBoardingScreen(), 2);

  @override
  void initState() {
    super.initState();
    _removeSplash();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagePaths.appLogo2,
              width: width * 0.38,
              height: height * 0.18,
            ),
            const Text(
              "ToDoFusion",
              style: TextStyle(fontSize: 26, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
