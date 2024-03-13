import '../../utilities/imports.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      contentWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomSizedBox(heightRatio: 0.05),
          const Text(
            "Welcome to ${AppConsts.appName}",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          const CustomSizedBox(heightRatio: 0.04),
          Text(
            "Please login to your account or create new account to continue",
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(color: Colors.grey.shade500, fontSize: 20),
          ),
          const Spacer(),
          CustomElevatedButton(
            maxWidth: 500,
            buttonText: "Login",
            isCapitalize: true,
            onPressed: () => CustomNavigation.navigatePushReplace(
                context, const LoginScreen()),
          ),
          const CustomSizedBox(heightRatio: 0.05),
          CustomElevatedButton(
            maxWidth: 500,
            buttonText: "Create Account",
            isCapitalize: true,
            buttonColor: Colors.transparent,
            onPressed: () => CustomNavigation.navigatePushReplace(
                context, const RegisterScreen()),
          ),
          const CustomSizedBox(heightRatio: 0.03),
        ],
      ),
    );
  }
}
