import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/presentation/household_division_popup_page/household_division_popup_page.dart';
import 'package:anil_kumar_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HouseholdDivisionPopupContainerScreen extends StatelessWidget {
  HouseholdDivisionPopupContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.householdDivisionPopupPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.householdDivisionPopupPage;
      case BottomBarEnum.Expense:
        return "/";
      case BottomBarEnum.Add:
        return "/";
      case BottomBarEnum.Household:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.householdDivisionPopupPage:
        return HouseholdDivisionPopupPage();
      default:
        return DefaultWidget();
    }
  }
}
