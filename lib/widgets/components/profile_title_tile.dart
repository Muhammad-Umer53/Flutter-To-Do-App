import '../../utilities/imports.dart';

class ProfileTitleTile extends StatelessWidget {
  final String? title;
  final IconData? leadingIcon;
  final Color? titleColor;
  final Color? leadingIconColor;
  final Color? trailingIconColor;
  final double? titleSize;
  final VoidCallback? trailingOnTap;
  final VoidCallback? onPressed;
  final IconData? trailingIcon;
  const ProfileTitleTile(
      {super.key,
      this.title,
      this.leadingIcon,
      this.titleColor,
      this.leadingIconColor,
      this.trailingIconColor,
      this.titleSize,
      this.trailingOnTap,
      this.onPressed,
      this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 1,
        child: Row(
          children: [
            Icon(
              leadingIcon,
              color: leadingIconColor ?? Colors.white70,
              weight: 15,
              size: 25,
            ),
            const CustomSizedBox(widthRatio: 0.05),
            Text(
              title!,
              style: TextStyle(
                  color: titleColor ?? Colors.white70,
                  fontSize: titleSize ?? 17,
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            IconButton(
                onPressed: trailingOnTap,
                icon: Icon(
                  trailingIcon ?? Icons.arrow_forward_ios,
                  color: leadingIconColor ?? Colors.white70,
                  weight: 15,
                )),
          ],
        ),
      ),
    );
  }
}
