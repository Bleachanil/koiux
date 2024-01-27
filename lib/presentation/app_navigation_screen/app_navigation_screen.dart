import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "onboarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "signin",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signinScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "budget individual - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.budgetIndividualTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "transaction lists",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transactionListsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "transaction detail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transactionDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "add",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.addScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "household transaction add",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.householdTransactionAddScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "household division popup - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.householdDivisionPopupContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sidebar",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sidebarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Household list",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.householdListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Member",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addMemberScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
