import '../../utilities/imports.dart';

class CalenderSection extends StatelessWidget {
  const CalenderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: SizedBox(
          child: Text(
            "Calender Section",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
