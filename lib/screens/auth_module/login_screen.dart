import '../../utilities/imports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            const HeadingTitle(text: "Login"),
            const CustomSizedBox(heightRatio: 0.03),
            Text(
              "Email",
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.w400),
            ),
            const CustomSizedBox(),
            CustomTextFormField(
              hintText: "Enter your username",
              controller: AppControllers.usernameLogin,
            ),
            const CustomSizedBox(heightRatio: 0.03),
            Text(
              "Password",
              textAlign: TextAlign.start,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade300,
                  fontWeight: FontWeight.w400),
            ),
            const CustomSizedBox(),
            CustomTextFormField(
              hintText: "*************",
              keyboard: TextInputType.visiblePassword,
              obscureText: true,
              controller: AppControllers.passwordLogin,
            ),
            const CustomSizedBox(heightRatio: 0.07),
            CustomElevatedButton(
              buttonColor: AppColors.appStandardLightColor,
              buttonText: 'Login',
              textSize: 20,
              onPressed: () {
                CustomNavigation.removeAllPages(context);
                CustomNavigation.navigatePushReplace(
                    context, const IndexScreen());
              },
            ),
            const CustomSizedBox(heightRatio: 0.05),
            const OrTile(),
            const CustomSizedBox(heightRatio: 0.04),
            GoogleElevatedButton(
              text: "  Login with google",
              onPressed: () {},
            ),
            const CustomSizedBox(heightRatio: 0.02),
            AppleElevatedButton(
              text: "  Login with apple",
              onPressed: () {},
            ),
            const CustomSizedBox(heightRatio: 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.white38),
                ),
                GestureDetector(
                  onTap: () {
                    CustomNavigation.navigatePushReplace(
                        context, const RegisterScreen());
                  },
                  child: const Text(
                    "Register",
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
