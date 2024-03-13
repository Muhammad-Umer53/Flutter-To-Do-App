import '../../utilities/imports.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreen();
}

class _OnBoardingScreen extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentSplashScreen = 0;
  final List<String> _images = [
    ImagePaths.onboardingImage1,
    ImagePaths.onboardingImage2,
    ImagePaths.onboardingImage3,
  ];
  final int _totalPages = 3;
  final List<Map<String, dynamic>> _texts = [
    {
      "Title": "Manage your tasks",
      "Info":
          "You can easily manage all of your daily tasks in ToDoFusion for free!"
    },
    {
      "Title": "Create daily routine",
      "Info":
          "In ToDoFusion, you can create your personalized routine to stay productive"
    },
    {
      "Title": "Organize your tasks",
      "Info":
          "You can organize your daily tasks by adding your tasks into separate categories"
    }
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15.0),
          child: GestureDetector(
            onTap: () {
              _pageController.jumpToPage(2);
            },
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
            ),
          ),
        ),
      ),
      body: CustomPageViewBuilder(
        pageCount: 3,
        pageController: _pageController,
        onPageChanged: (pageIndex) =>
            setState(() => _currentSplashScreen = pageIndex),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(
                  height: height * 0.37, child: Image.asset(_images[index])),
              const CustomSizedBox(heightRatio: 0.035),
              SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                      _totalPages,
                      (containerIndex) => Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(10),
                        width: 30,
                        height: 3,
                        color: _currentSplashScreen == containerIndex
                            ? Colors.white
                            : Colors.grey.shade700,
                      ),
                    )),
              ),
              const CustomSizedBox(heightRatio: 0.035),
              Text(
                _texts[index]["Title"],
                style: TextStyle(color: Colors.grey.shade300, fontSize: 26),
              ),
              const CustomSizedBox(heightRatio: 0.02),
              Expanded(
                child: Text(
                  _texts[index]["Info"],
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 17),
                ),
              ),
              const Spacer(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _pageController.jumpToPage(_currentSplashScreen - 1);
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade700),
                      ),
                    ),
                    CustomElevatedButton(
                      maxWidth: 250,
                      buttonHeightRatio: 0.06,
                      isCapitalize: true,
                      textSize: width > 350 ? 17.5 : 16,
                      buttonWidthRatio:
                          _currentSplashScreen == _totalPages - 1 ? 0.45 : 0.30,
                      buttonText: _currentSplashScreen == _totalPages - 1
                          ? "Get Started"
                          : "Next",
                      onPressed: () {
                        _currentSplashScreen == _totalPages - 1
                            ? CustomNavigation.navigatePushReplace(
                                context, const GetStartedScreen())
                            : _pageController
                                .jumpToPage(_currentSplashScreen + 1);
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
