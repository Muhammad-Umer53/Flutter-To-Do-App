import '../../../utilities/imports.dart';

class AppleElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  const AppleElevatedButton({
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
            Container(
                width: 27,
                height: 32,
                padding: const EdgeInsets.only(
                    bottom: 7.5, right: 5.5, left: 5.5, top: 5.5),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.greyColor),
                child: Image.asset(
                  width: 25,
                  height: 30,
                  ImagePaths.appleLogo,
                  color: Colors.white,
                )),
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
