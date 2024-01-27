import '../household_transaction_add_screen/widgets/householdtransactionadd_item_widget.dart';
import '../household_transaction_add_screen/widgets/twentysix_item_widget.dart';
import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/presentation/household_division_popup_page/household_division_popup_page.dart';
import 'package:anil_kumar_s_application2/widgets/custom_bottom_bar.dart';
import 'package:anil_kumar_s_application2/widgets/custom_elevated_button.dart';
import 'package:anil_kumar_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HouseholdTransactionAddScreen extends StatelessWidget {
  HouseholdTransactionAddScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController inputController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderNavigation(context),
              SizedBox(height: 19.v),
              Container(
                height: 172.v,
                width: 335.h,
                margin: EdgeInsets.only(left: 32.h),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 14.h,
                          top: 40.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.h,
                          vertical: 21.v,
                        ),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                "-",
                                style: CustomTextStyles.robotoBluegray40001,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 15.h,
                                top: 19.v,
                                bottom: 19.v,
                              ),
                              child: Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "89,0",
                                          style: theme.textTheme.displayMedium,
                                        ),
                                        TextSpan(
                                          text: "|",
                                          style: CustomTextStyles
                                              .displayMediumThin,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(
                                    width: 102.h,
                                    child: Divider(),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 29.v,
                                right: 1.h,
                                bottom: 30.v,
                              ),
                              child: Text(
                                "AUD",
                                style: theme.textTheme.headlineSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 15.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title",
                              style: CustomTextStyles.titleSmallBlack90001_1,
                            ),
                            SizedBox(height: 7.v),
                            CustomTextFormField(
                              controller: inputController,
                              hintText: "Dine out",
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 33.h),
                child: Text(
                  "Expense Type",
                  style: CustomTextStyles.titleMediumGray60001,
                ),
              ),
              SizedBox(height: 13.v),
              _buildTwentySix(context),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 51.h),
                child: Text(
                  "From category",
                  style: CustomTextStyles.titleMediumGray600,
                ),
              ),
              SizedBox(height: 13.v),
              _buildHouseholdTransactionAdd(context),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                height: 53.v,
                text: "Confirm",
                margin: EdgeInsets.only(
                  left: 62.h,
                  right: 47.h,
                ),
                buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_1,
                alignment: Alignment.center,
              ),
              SizedBox(height: 5.v),
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
      width: 429.h,
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 40.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 13.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Add ",
                  style: CustomTextStyles.titleMediumff003829,
                ),
                TextSpan(
                  text: "Expense",
                  style: CustomTextStyles.bodyLargeff003829,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 33.h),
      child: Wrap(
        runSpacing: 24.57.v,
        spacing: 24.57.h,
        children: List<Widget>.generate(2, (index) => TwentysixItemWidget()),
      ),
    );
  }

  /// Section Widget
  Widget _buildHouseholdTransactionAdd(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 51.h,
          right: 61.h,
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 41.v,
            crossAxisCount: 4,
            mainAxisSpacing: 52.h,
            crossAxisSpacing: 52.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 8,
          itemBuilder: (context, index) {
            return HouseholdtransactionaddItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
