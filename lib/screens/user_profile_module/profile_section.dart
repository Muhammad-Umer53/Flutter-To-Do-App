import 'package:to_do_flutter_app/widgets/components/profile_title_tile.dart';

import '../../utilities/imports.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(3),
      child: Column(
        children: [
          const CustomSizedBox(heightRatio: 0.03),
          const Text(
            "Profile",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const CustomSizedBox(heightRatio: 0.02),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.black,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                ImagePaths.demoAccountProfilePic,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const CustomSizedBox(),
          const Text(
            "Ahmed Iqbal",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const CustomSizedBox(heightRatio: 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  color: Colors.grey.shade900,
                  width: 150,
                  height: 60,
                  alignment: Alignment.center,
                  child: const Text(
                    "10 Tasks left",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.grey.shade900,
                  width: 150,
                  height: 60,
                  alignment: Alignment.center,
                  child: const Text(
                    "5 Tasks done",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          const CustomSizedBox(heightRatio: 0.05),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Settings",
              maxLines: 1,
              style: TextStyle(color: Colors.white54, fontSize: 15.5),
            ),
          ),
          ProfileTitleTile(
            title: "App Settings",
            leadingIcon: Icons.settings_outlined,
            trailingOnTap: () {
              CustomNavigation.navigatePush(context, const SettingsScreen());
            },
          ),
          const CustomSizedBox(heightRatio: 0.03),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Account",
              maxLines: 1,
              style: TextStyle(color: Colors.white54, fontSize: 15.5),
            ),
          ),
          ProfileTitleTile(
            title: "Change account name",
            leadingIcon: Icons.person_outline_rounded,
            trailingOnTap: () {},
          ),
          ProfileTitleTile(
            title: "Change account password",
            leadingIcon: Icons.key_outlined,
            trailingOnTap: () {},
          ),
          ProfileTitleTile(
            title: "Change account image",
            leadingIcon: Icons.camera_alt_outlined,
            trailingOnTap: () {},
          ),
          const CustomSizedBox(heightRatio: 0.03),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppConsts.appName,
              maxLines: 1,
              style: TextStyle(color: Colors.white54, fontSize: 15.5),
            ),
          ),
          ProfileTitleTile(
            title: "About us",
            leadingIcon: Icons.info_outline,
            trailingOnTap: () {},
          ),
          ProfileTitleTile(
            title: "FAQ",
            leadingIcon: Icons.details_outlined,
            trailingOnTap: () {},
          ),
          ProfileTitleTile(
            title: "Help & Feedback",
            leadingIcon: Icons.electric_bolt,
            trailingOnTap: () {},
          ),
          ProfileTitleTile(
            title: "Support US",
            leadingIcon: Icons.thumb_up_alt_outlined,
            trailingOnTap: () {},
          ),
          ProfileTitleTile(
            title: "Log out",
            titleColor: Colors.red,
            leadingIcon: Icons.logout_rounded,
            leadingIconColor: Colors.red,
            onPressed: () {
              CustomNavigation.removeAllPages(context);
              CustomNavigation.navigatePushReplace(
                  context, const LoginScreen());
            },
          ),
        ],
      ),
    );
  }
}
