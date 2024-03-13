import '../../utilities/imports.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(ImagePaths.mainScreenBgImage),
          const CustomSizedBox(heightRatio: 0.03),
          const Text(
            "What do you want to do today?",
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            style: TextStyle(fontSize: 22, color: Colors.white70),
          ),
          const CustomSizedBox(heightRatio: 0.02),
          const Text(
            "Tap + to add your tasks",
            style: TextStyle(fontSize: 19, color: Colors.white70),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
