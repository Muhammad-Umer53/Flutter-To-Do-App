import '../../utilities/imports.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return CustomScaffold(
      bodyWidth: width * 1,
      contentWidget: CustomSingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSizedBox(heightRatio: 0.04),
            const HeadingTitle(text: "Register"),
            const CustomSizedBox(heightRatio: 0.03),
            const Text(
              "Email",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            const CustomSizedBox(),
            const CustomTextFormField(
              hintText: "Enter your username",
            ),
            const CustomSizedBox(heightRatio: 0.03),
            const Text(
              "Password",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            const CustomSizedBox(),
            const CustomTextFormField(
              hintText: "*************",
              keyboard: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const CustomSizedBox(heightRatio: 0.03),
            const Text(
              "Confirm Password",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            const CustomSizedBox(),
            const CustomTextFormField(
              hintText: "*************",
              keyboard: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const CustomSizedBox(heightRatio: 0.03),
            CustomElevatedButton(
              buttonColor: AppColors.appStandardLightColor,
              buttonText: 'Register',
              textSize: 20,
              onPressed: () {},
            ),
            const CustomSizedBox(heightRatio: 0.02),
            const OrTile(),
            const CustomSizedBox(heightRatio: 0.02),
            GoogleElevatedButton(
              text: "  Register with google",
              onPressed: () {},
            ),
            const CustomSizedBox(heightRatio: 0.02),
            AppleElevatedButton(
              text: "  Register with apple",
              onPressed: () {},
            ),
            const CustomSizedBox(heightRatio: 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.white38),
                ),
                GestureDetector(
                  onTap: () {
                    CustomNavigation.navigatePushReplace(
                        context, const LoginScreen());
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
