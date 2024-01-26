import '../household_list_screen/widgets/cardtransaction1_item_widget.dart';
import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HouseholdListScreen extends StatelessWidget {
  const HouseholdListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildHeaderNavigation(context),
                  SizedBox(height: 48.v),
                  Text("Members",
                      style: CustomTextStyles.titleMediumBluegray900),
                  SizedBox(height: 19.v),
                  _buildCardTransaction(context),
                  SizedBox(height: 433.v),
                  Padding(
                      padding: EdgeInsets.only(right: 18.h),
                      child: CustomIconButton(
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          padding: EdgeInsets.all(16.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL28,
                          alignment: Alignment.centerRight,
                          onTap: () {
                            onTapBtnPlus(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPlus))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildHeaderNavigation(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 11.v),
        decoration: AppDecoration.fillTeal,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftGray600,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(bottom: 10.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 32.h, bottom: 10.v),
              child:
                  Text("Household", style: CustomTextStyles.titleLargeGray900))
        ]));
  }

  /// Section Widget
  Widget _buildCardTransaction(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Cardtransaction1ItemWidget();
            }));
  }

  /// Navigates to the sidebarScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sidebarScreen);
  }

  /// Navigates to the addMemberScreen when the action is triggered.
  onTapBtnPlus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addMemberScreen);
  }
}
