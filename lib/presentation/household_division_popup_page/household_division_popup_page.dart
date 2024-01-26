import '../household_division_popup_page/widgets/buttonnavigationconturi_item_widget.dart';
import '../household_division_popup_page/widgets/cardtransaction_item_widget.dart';
import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_elevated_button.dart';
import 'package:anil_kumar_s_application2/widgets/custom_icon_button.dart';
import 'package:anil_kumar_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HouseholdDivisionPopupPage extends StatelessWidget {
  HouseholdDivisionPopupPage({Key? key}) : super(key: key);

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: SizedBox(
                    height: 817.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.center, children: [
                      SizedBox(
                          width: double.maxFinite,
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 67.h, right: 42.h, bottom: 233.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildButtonNavigationConturi(context),
                                        SizedBox(height: 194.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 131.h,
                                                vertical: 16.v),
                                            decoration: AppDecoration
                                                .fillPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder9),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(height: 2.v),
                                                  Text("Confirm",
                                                      style: CustomTextStyles
                                                          .titleMediumWhiteA700_1)
                                                ]))
                                      ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
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
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                          left: 14.h,
                                                          top: 40.v),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 22.h,
                                                              vertical: 21.v),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder2),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 1
                                                                            .v),
                                                                child: Text("-",
                                                                    style: CustomTextStyles
                                                                        .robotoBluegray40001)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 15
                                                                            .h,
                                                                        top: 19
                                                                            .v,
                                                                        bottom: 19
                                                                            .v),
                                                                child: Column(
                                                                    children: [
                                                                      RichText(
                                                                          text: TextSpan(
                                                                              children: [
                                                                                TextSpan(text: "89,0", style: theme.textTheme.displayMedium),
                                                                                TextSpan(text: "|", style: CustomTextStyles.displayMediumThin)
                                                                              ]),
                                                                          textAlign:
                                                                              TextAlign.left),
                                                                      SizedBox(
                                                                          width: 102
                                                                              .h,
                                                                          child:
                                                                              Divider())
                                                                    ])),
                                                            Spacer(),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 29
                                                                            .v,
                                                                        right:
                                                                            1.h,
                                                                        bottom: 30
                                                                            .v),
                                                                child: Text(
                                                                    "AUD",
                                                                    style: theme
                                                                        .textTheme
                                                                        .headlineSmall))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 15.h),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("Title",
                                                                style: CustomTextStyles
                                                                    .titleSmallBlack90001_1),
                                                            SizedBox(
                                                                height: 7.v),
                                                            CustomTextFormField(
                                                                controller:
                                                                    inputController,
                                                                hintText:
                                                                    "Dine out",
                                                                textInputAction:
                                                                    TextInputAction
                                                                        .done)
                                                          ])))
                                            ])),
                                    SizedBox(height: 27.v),
                                    _buildSixtyTwo(context),
                                    SizedBox(height: 241.v),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgNavHousehold,
                                        height: 16.v,
                                        width: 22.h,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(right: 118.h))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildButtonNavigationConturi(BuildContext context) {
    return Expanded(
        child: Align(
            alignment: Alignment.centerRight,
            child: Container(
                height: 32.v,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 7.v),
                decoration: AppDecoration.fillPrimary
                    .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
                child: ListView.separated(
                    padding: EdgeInsets.only(left: 123.h, right: 45.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 1.h);
                    },
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return ButtonnavigationconturiItemWidget();
                    }))));
  }

  /// Section Widget
  Widget _buildHeaderNavigation(BuildContext context) {
    return Container(
        width: 425.h,
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 8.v),
        decoration: AppDecoration.fillTeal,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 13.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Add ", style: CustomTextStyles.titleMediumff003829),
                TextSpan(
                    text: "Expense", style: CustomTextStyles.bodyLargeff003829)
              ]),
              textAlign: TextAlign.left)
        ]));
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 318.v,
            width: 381.h,
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 1.h, right: 251.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Expense Type",
                                style: CustomTextStyles.titleMediumGray60001),
                            SizedBox(height: 13.v),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 31.h, vertical: 6.v),
                                decoration: AppDecoration.outlineGray400
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder16),
                                child: Text("Individual",
                                    style: CustomTextStyles.bodyMediumGray600))
                          ]))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 19.h, right: 44.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("From category",
                                style: CustomTextStyles.titleMediumGray600),
                            SizedBox(height: 13.v),
                            Padding(
                                padding: EdgeInsets.only(right: 1.h),
                                child: _buildSixtyFour(context)),
                            SizedBox(height: 23.v),
                            _buildSixtyFour(context)
                          ]))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.circleBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 17.v),
                            ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: 6.v);
                                },
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return CardtransactionItemWidget();
                                }),
                            SizedBox(height: 20.v),
                            CustomElevatedButton(
                                width: 116.h,
                                text: "save",
                                margin: EdgeInsets.only(left: 111.h),
                                leftIcon: Container(
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconcheckWhiteA700,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize)),
                                buttonStyle: CustomButtonStyles.fillPrimaryTL16,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumWhiteA700,
                                onPressed: () {
                                  onTapSave(context);
                                })
                          ])))
            ])));
  }

  /// Common widget
  Widget _buildSixtyFour(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(9.h),
          decoration: IconButtonStyleHelper.outlinePurpleTL20,
          child: CustomImageView(imagePath: ImageConstant.imgIconClothes)),
      CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(11.h),
          decoration: IconButtonStyleHelper.outlineOnErrorTL20,
          child: CustomImageView(imagePath: ImageConstant.imgIconDonation)),
      CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(9.h),
          decoration: IconButtonStyleHelper.outlineBlueGrayTL20,
          child: CustomImageView(imagePath: ImageConstant.imgThumbsUp)),
      CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(11.h),
          decoration: IconButtonStyleHelper.outlineRedATL20,
          child: CustomImageView(imagePath: ImageConstant.imgIconHome))
    ]);
  }

  /// Navigates to the householdTransactionAddScreen when the action is triggered.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.householdTransactionAddScreen);
  }
}
