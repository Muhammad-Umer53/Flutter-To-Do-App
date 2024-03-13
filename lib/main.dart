import 'utilities/imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        hoverColor: Colors.grey.shade800,
        splashColor: Colors.grey.shade900, // done

        listTileTheme: const ListTileThemeData(
          iconColor: Colors.white70,
          titleTextStyle: TextStyle(
            color: Colors.white70,
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white, weight: 14),
        appBarTheme: const AppBarTheme(
          color: AppColors.defaultAppBarColor,
          surfaceTintColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.appStandardColor,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
