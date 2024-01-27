import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavDashboard,
      activeIcon: ImageConstant.imgNavDashboard,
      title: "Dashboard",
      type: BottomBarEnum.Dashboard,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavExpense,
      activeIcon: ImageConstant.imgNavExpense,
      title: "Expense",
      type: BottomBarEnum.Expense,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAdd,
      activeIcon: ImageConstant.imgNavAdd,
      title: "Add",
      type: BottomBarEnum.Add,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavHousehold,
      activeIcon: ImageConstant.imgNavHousehold,
      title: "Household",
      type: BottomBarEnum.Household,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMore,
      activeIcon: ImageConstant.imgNavMore,
      title: "More",
      type: BottomBarEnum.More,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.v,
      decoration: BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: appTheme.gray600,
          width: 1.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: getCurrentRouteIndex(context),
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  color: appTheme.gray600,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallGray600.copyWith(
                      color: appTheme.gray600,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  color: appTheme.whiteA700,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallWhiteA700.copyWith(
                      color: appTheme.whiteA700,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }

  String getCurrentRouteName(BuildContext context) {
    // Use ModalRoute.of to get the current route
    final currentRoute = ModalRoute.of(context);

    // Check if the currentRoute is not null and has a settings property
    if (currentRoute != null && currentRoute.settings.name != null) {
      // Return the name of the current route
      return currentRoute.settings.name!;
    }

    // Default to an empty string if the route name is not available
    return "";
  }

  int getCurrentRouteIndex(context) {
    String currentRouteName = getCurrentRouteName(context);

    switch (currentRouteName) {
      case '/dashboard_screen':
        return 0;
      case '/budget_individual_tab_container_screen':
        return 1;
      case '/add_screen':
        return 2;
      case '/household_list_screen':
        return 3;
      case '/sidebar_screen':
        return 4;
      default:
        return 0;
    }
  }
}

enum BottomBarEnum {
  Dashboard,
  Expense,
  Add,
  Household,
  More,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
