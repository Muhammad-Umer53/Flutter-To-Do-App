import '../../utilities/imports.dart';

class CategoryAddScreen extends StatefulWidget {
  const CategoryAddScreen({super.key});

  @override
  State<CategoryAddScreen> createState() => _CategoryAddScreenState();
}

class _CategoryAddScreenState extends State<CategoryAddScreen> {
  _chooseCategoryIcon() {}

  final List<Color> _categoryColors = [
    AppColors.categoryColor1,
    AppColors.categoryColor2,
    AppColors.categoryColor3,
    AppColors.categoryColor4,
    AppColors.categoryColor5,
    AppColors.categoryColor6,
    AppColors.categoryColor7,
    AppColors.categoryColor8,
    AppColors.categoryColor9,
    AppColors.categoryColor10,
    AppColors.categoryColor11,
    AppColors.categoryColor12,
    AppColors.categoryColor13,
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      bodyMaxWidth: MediaQuery.sizeOf(context).width * 1,
      bodyPadding: const EdgeInsets.only(left: 17, top: 12, bottom: 20),
      contentWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSizedBox(heightRatio: 0.05),
          Text(
            "Create new category",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 25.5, color: Colors.grey.shade200),
          ),
          const CustomSizedBox(heightRatio: 0.03),
          Text(
            "Category name:",
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w300),
          ),
          const CustomSizedBox(heightRatio: 0.03),
          CustomTextFormField(
            controller: AppControllers.categoryNameController,
            maxWidth: MediaQuery.sizeOf(context).width * 1,
            hintText: 'Category name',
            keyboard: TextInputType.name,
            hintStyle: const TextStyle(color: Colors.white54),
          ),
          const CustomSizedBox(
            heightRatio: 0.03,
          ),
          Text(
            "Category icon:",
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w300),
          ),
          const CustomSizedBox(heightRatio: 0.03),
          InkWell(
            onTap: _chooseCategoryIcon(),
            child: Container(
              width: 250,
              height: 46,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadiusDirectional.circular(7),
              ),
              child: Text(
                "Choose icon from library",
                style: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 17,
                    fontWeight: FontWeight.w200),
              ),
            ),
          ),
          const CustomSizedBox(heightRatio: 0.03),
          Text(
            "Category color:",
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey.shade300,
                fontWeight: FontWeight.w300),
          ),
          const CustomSizedBox(heightRatio: 0.03),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 1,
            height: MediaQuery.sizeOf(context).height * 0.05,
            child: ListView.separated(
              itemCount: _categoryColors.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) =>
                  const CustomSizedBox(widthRatio: 0.025),
              itemBuilder: (context, index) {
                return InkWell(
                  highlightColor: Colors.black,
                  hoverColor: Colors.black,
                  splashColor: Colors.black,
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  onTap: () {},
                  child: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: _categoryColors[index],
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              },
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    CustomNavigation.navigatePushReplace(
                        context, const IndexScreen());
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                        color: AppColors.appStandardColor, fontSize: 17.5),
                  ),
                ),
                CustomElevatedButton(
                  buttonText: "Create Category",
                  textSize: 17,
                  buttonColor: AppColors.appStandardColor,
                  textColor: Colors.white70,
                  onPressed: () {},
                  maxWidth: 500,
                  buttonHeightRatio: 0.055,
                  buttonWidthRatio: 0.48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
