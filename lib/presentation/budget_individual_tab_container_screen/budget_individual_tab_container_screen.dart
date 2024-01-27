import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/presentation/budget_household_page/budget_household_page.dart';
import 'package:anil_kumar_s_application2/presentation/budget_individual_page/budget_individual_page.dart';
import 'package:anil_kumar_s_application2/presentation/household_division_popup_page/household_division_popup_page.dart';
import 'package:anil_kumar_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class BudgetIndividualTabContainerScreen extends StatefulWidget {
  const BudgetIndividualTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BudgetIndividualTabContainerScreenState createState() =>
      BudgetIndividualTabContainerScreenState();
}

class BudgetIndividualTabContainerScreenState
    extends State<BudgetIndividualTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeaderNavigation(context),
              _buildTabview(context),
              Expanded(
                // height: 500.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    BudgetIndividualPage(),
                    BudgetHouseholdPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderNavigation(BuildContext context) {
    return Container(
      width: 428.h,
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.v),
          Text(
            "Expenses",
            style: CustomTextStyles.titleMediumPrimaryContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 31.v,
      width: 428.h,
      decoration: BoxDecoration(
        color: appTheme.teal50,
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Text(
              "Personal",
            ),
          ),
          Tab(
            child: Column(
              children: [
                Text(
                  "Household",
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSelectionLine120,
                  // height: 1.v,
                  width: 210.h,
                  margin: EdgeInsets.only(top: 6.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        print('type $type');
        Navigator.pushNamed(context, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return AppRoutes.dashboardScreen;
      case BottomBarEnum.Expense:
        return AppRoutes.budgetIndividualTabContainerScreen;
      case BottomBarEnum.Add:
        return AppRoutes.addScreen;
      case BottomBarEnum.Household:
        return AppRoutes.householdListScreen;
      case BottomBarEnum.More:
        return AppRoutes.sidebarScreen;
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
