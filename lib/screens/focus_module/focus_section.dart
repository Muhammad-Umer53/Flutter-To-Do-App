import '../../utilities/imports.dart';

class FocusSection extends StatelessWidget {
  const FocusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        child: Text(
          "Focus Section",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ),
    );
  }
}
