import '../../../utilities/imports.dart';

class GoogleElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;

  const GoogleElevatedButton({
    super.key,
    this.onPressed,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      buttonContent: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              width: 22,
              height: 24,
              ImagePaths.googleLogo,
            ),
            Text(
              text!,
              style: const TextStyle(color: Colors.white70, fontSize: 18),
            )
          ],
        ),
      ),
      onPressed: onPressed,
      buttonColor: Colors.transparent,
    );
  }
}
