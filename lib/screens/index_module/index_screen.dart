import 'package:to_do_flutter_app/screens/category_module/category_add_screen.dart';

import '../../utilities/imports.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({super.key});

  @override
  State<IndexScreen> createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  final List<Map<String, dynamic>> categoryDetails = [
    {
      "BgColor": AppColors.categoryColor13,
      "Name": "Grocery",
      "Icon": const Icon(Icons.fastfood_outlined, size: 26)
    },
    {
      "BgColor": AppColors.categoryColor2,
      "Name": "Work",
      "Icon": const Icon(Icons.work_outline_outlined, size: 26),
    },
    {
      "BgColor": AppColors.categoryColor3,
      "Name": "Sport",
      "Icon": const Icon(Icons.sports_cricket_outlined, size: 26)
    },
    {
      "BgColor": AppColors.categoryColor4,
      "Name": "Design",
      "Icon": const Icon(Icons.design_services_outlined, size: 26)
    },
    {
      "BgColor": AppColors.categoryColor5,
      "Name": "University",
      "Icon": const Icon(Icons.school_outlined, size: 26),
    },
    {
      "BgColor": AppColors.categoryColor6,
      "Name": "Social",
      "Icon": const Icon(Icons.people_outline, size: 26)
    },
    {
      "BgColor": AppColors.categoryColor7,
      "Name": "Vocals",
      "Icon": const Icon(Icons.queue_music_outlined, size: 26)
    },
    {
      "BgColor": AppColors.categoryColor8,
      "Name": "Health",
      "Icon": const Icon(Icons.health_and_safety_outlined, size: 26)
    },
    {
      "BgColor": AppColors.categoryColor9,
      "Name": "Movie",
      "Icon": const Icon(Icons.camera_alt_outlined, size: 26)
    },
    {
      "BgColor": AppColors.categoryColor10,
      "Name": "Home",
      "Icon": const Icon(Icons.home_outlined, size: 26)
    },
    {
      "BgColor": AppColors.categoryColor11,
      "Name": "Create New",
      "Icon": const Icon(Icons.add, size: 26)
    },
  ];

  int currentBottomBarValue = 0;

  final List<Widget> _body = [
    const HomeSection(),
    const CalenderSection(),
    const FocusSection(),
    const ProfileSection(),
  ];

  final List _appBarSections = [
    AppBar(
      toolbarHeight: 80,
      actions: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: GestureDetector(
            onTap: () {},
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(ImagePaths.demoAccountProfilePic)),
          ),
        )
      ],
      leading: IconButton(
          onPressed: () {},
          tooltip: 'Menu',
          icon: const Icon(
            Icons.menu_open_outlined,
            color: Colors.grey,
          )),
      centerTitle: true,
      title: Text(
        "Index",
        style: TextStyle(fontSize: 22, color: Colors.grey.shade300),
      ),
    ),
    null,
    null,
    null,
  ];

  void addCategory() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: const RoundedRectangleBorder(),
        surfaceTintColor: Colors.grey,
        backgroundColor: Colors.grey.shade900,
        title: const Text(
          "Choose Category",
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
        ),
        content: CustomSizedBox(
          heightRatio: 0.65,
          widthRatio: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(
                color: Colors.white,
                height: 1,
                thickness: 1.25,
                indent: 0,
                endIndent: 0,
              ),
              const CustomSizedBox(heightRatio: 0.022),
              CustomSizedBox(
                widthRatio: 1,
                heightRatio: 0.55,
                child: GridView.builder(
                  itemCount: categoryDetails.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisExtent: 100),
                  itemBuilder: (context, index) {
                    return CustomSizedBox(
                      heightRatio: 0.85,
                      widthRatio: 1,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Container(
                                width: 120,
                                height: MediaQuery.sizeOf(context).height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: categoryDetails[index]["BgColor"],
                                ),
                                child: categoryDetails[index]["Icon"],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "${categoryDetails[index]["Name"]}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              CustomElevatedButton(
                buttonText: "Add Category",
                buttonWidthRatio: 1,
                buttonHeightRatio: 0.06,
                onPressed: () {
                  CustomNavigation.navigatePop(context);
                  CustomNavigation.navigatePush(
                      context, const CategoryAddScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: AppConsts.maxWidth),
          padding: const EdgeInsets.all(12),
          child: _body[currentBottomBarValue],
        ),
      ),
      appBar: _appBarSections[currentBottomBarValue],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        onPressed: () {
          addCategory();
        },
        tooltip: "Have a task?",
        heroTag: "Add Task",
        shape: const CircleBorder(),
        backgroundColor: AppColors.appStandardLightColor,
        child: const Text(
          "+",
          style: TextStyle(
              fontSize: 32, color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade900,
        height: 75,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentBottomBarValue = value;
            });
          },
          elevation: 0,
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.grey.shade900,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentBottomBarValue,
          selectedLabelStyle: TextStyle(
              overflow: TextOverflow.fade, fontSize: width > 360 ? 14 : 11.5),
          unselectedLabelStyle: TextStyle(
              overflow: TextOverflow.fade, fontSize: width > 360 ? 14 : 11.5),
          items: const [
            BottomNavigationBarItem(
              label: BottomNavBarConsts.bottomNavBarLabel1,
              icon: BottomNavBarConsts.bottomNavBarIcon1,
            ),
            BottomNavigationBarItem(
              label: BottomNavBarConsts.bottomNavBarLabel2,
              icon: BottomNavBarConsts.bottomNavBarIcon2,
            ),
            BottomNavigationBarItem(
              label: BottomNavBarConsts.bottomNavBarLabel3,
              icon: BottomNavBarConsts.bottomNavBarIcon3,
            ),
            BottomNavigationBarItem(
              label: BottomNavBarConsts.bottomNavBarLabel4,
              icon: BottomNavBarConsts.bottomNavBarIcon4,
            ),
          ],
        ),
      ),
    );
  }
}
