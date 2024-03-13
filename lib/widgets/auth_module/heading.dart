import '../../../utilities/imports.dart';

class HeadingTitle extends StatelessWidget {
  final String? text;
  const HeadingTitle({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.grey.shade300,
        fontSize: 33,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
