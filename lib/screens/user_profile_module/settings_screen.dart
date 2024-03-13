import '../../utilities/imports.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bodyMaxWidth: MediaQuery.sizeOf(context).width * 1,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            CustomNavigation.navigatePop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.grey,
          ),
        ),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      contentWidget: const Column(
        children: [
          CustomSizedBox(heightRatio: 0.04),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Settings",
              maxLines: 1,
              style: TextStyle(color: Colors.white54, fontSize: 15.5),
            ),
          ),
          ListTile(
            title: Text("Change App Color"),
            leading: Icon(Icons.colorize),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          CustomSizedBox(),
          ListTile(
            title: Text("Change App Typography"),
            leading: Icon(Icons.sort_by_alpha),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          CustomSizedBox(),
          ListTile(
            title: Text("Change App Language"),
            leading: Icon(Icons.language_rounded),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          CustomSizedBox(heightRatio: 0.03),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Import",
              maxLines: 1,
              style: TextStyle(color: Colors.white54, fontSize: 15.5),
            ),
          ),
          ListTile(
            title: Text("Import from Google calender"),
            leading: Icon(Icons.edit_calendar_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
