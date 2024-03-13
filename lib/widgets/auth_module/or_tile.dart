import '../../../utilities/imports.dart';

class OrTile extends StatelessWidget {
  const OrTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 2,
            constraints: const BoxConstraints(maxWidth: AppConsts.maxWidth),
            color: Colors.white38,
          ),
        ),
        const Text(
          " or ",
          style: TextStyle(color: Colors.white38, fontSize: 19),
        ),
        Expanded(
          child: Container(
            height: 2,
            constraints: const BoxConstraints(maxWidth: AppConsts.maxWidth),
            color: Colors.white38,
          ),
        ),
      ],
    );
  }
}
