import 'package:flutter/material.dart';
import 'package:to_do_flutter_app/utilities/colors.dart';
import 'package:to_do_flutter_app/utilities/consts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Color? buttonColor;
  final Color? textColor;
  final num? buttonWidthRatio;
  final num? buttonHeightRatio;
  final double? textSize;
  final Widget? buttonContent;
  final bool isCapitalize;
  final FontWeight? fontWeight;
  final double? maxWidth;
  final BorderRadiusGeometry? buttonBorderRadius;
  final TextOverflow? overflow;

  const CustomElevatedButton({
    super.key,
    this.buttonText,
    this.onPressed,
    this.onLongPress,
    this.buttonColor,
    this.textColor,
    this.buttonWidthRatio,
    this.textSize,
    this.buttonHeightRatio,
    this.buttonContent,
    this.isCapitalize = false,
    this.fontWeight,
    this.maxWidth,
    this.buttonBorderRadius,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      width: width * (buttonWidthRatio ?? 0.95),
      height: height * (buttonHeightRatio ?? 0.07),
      constraints: BoxConstraints(
        maxWidth: maxWidth ?? AppConsts.maxWidth,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.appStandardColor,
          shape: BeveledRectangleBorder(
              borderRadius:
                  buttonBorderRadius ?? BorderRadiusDirectional.circular(3),
              side: const BorderSide(
                  color: AppColors.appStandardColor, width: 0.5)),
        ),
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: buttonContent ??
            Text(
              isCapitalize ? buttonText!.toUpperCase() : buttonText!,
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: overflow ?? TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: fontWeight ?? FontWeight.w400,
                  color: textColor ?? Colors.white,
                  fontSize: textSize ?? 19),
            ),
      ),
    );
  }
}
