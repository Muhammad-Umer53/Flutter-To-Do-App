import '../../utilities/imports.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? keyboard;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final TextEditingController? controller;
  final Color? textColor;
  final FormFieldValidator<String>? validator;
  final TextStyle? labelStyle;
  final TextStyle? hintStyle;
  final TextStyle? floatingLabelStyle;
  final bool? obscureText;
  final num? heightRatio;
  final num? widthRatio;
  final double? maxWidth;
  final Color? cursorColor;
  final VoidCallback? onTap;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;

  const CustomTextFormField({
    super.key,
    this.keyboard,
    this.labelText,
    this.hintText,
    this.helperText,
    this.controller,
    this.textColor,
    this.validator,
    this.labelStyle,
    this.hintStyle,
    this.floatingLabelStyle,
    this.obscureText,
    this.heightRatio,
    this.widthRatio,
    this.maxWidth,
    this.cursorColor,
    this.onTap,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width * (widthRatio ?? 0.92),
      constraints: BoxConstraints(maxWidth: maxWidth ?? AppConsts.maxWidth),
      child: TextFormField(
        cursorColor: cursorColor ?? Colors.white,
        onTap: onTap,
        validator: validator,
        controller: controller,
        keyboardType: keyboard,
        style: TextStyle(color: textColor ?? Colors.white),
        obscuringCharacter: '*',
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          focusedErrorBorder: focusedBorder,
          errorBorder: errorBorder,
          enabledBorder: enabledBorder ??
              const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Colors.grey)),
          focusedBorder: focusedBorder ??
              const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Colors.grey)),
          labelText: labelText,
          helperText: helperText,
          hintStyle: hintStyle ?? const TextStyle(color: Colors.white38),
          floatingLabelStyle:
              floatingLabelStyle ?? const TextStyle(color: Colors.white),
          labelStyle: labelStyle ?? const TextStyle(color: Colors.white),
          hintText: hintText,
        ),
      ),
    );
  }
}
