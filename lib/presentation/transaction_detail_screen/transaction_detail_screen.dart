import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:anil_kumar_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:anil_kumar_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TransactionDetailScreen extends StatelessWidget {
  const TransactionDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 0.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("-500,90 AUD",
                              style: CustomTextStyles.headlineLargeTeal700)),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("Dine out",
                              style: CustomTextStyles.titleSmallTeal700)),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("tue,11 May,15:42",
                              style: CustomTextStyles.bodySmallTeal700_1)),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 38.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup101828,
                                height: 24.v,
                                width: 21.h),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h, top: 6.v),
                                child: Text("share Expense",
                                    style: CustomTextStyles.bodyMediumPrimary))
                          ])),
                      SizedBox(height: 14.v),
                      _buildFrame(context),
                      SizedBox(height: 24.v),
                      _buildFrame1(context),
                      SizedBox(height: 61.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(right: 109.h),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder2),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgIconBin,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, top: 4.v, bottom: 2.v),
                                        child: Text("Delete Expense",
                                            style: CustomTextStyles
                                                .bodyMediumRedA200))
                                  ]))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    // return CustomAppBar(
    //     leadingWidth: double.maxFinite,
    //     leading: AppbarLeadingImage(
    //         imagePath: ImageConstant.imgArrowLeftGray600,
    //         margin: EdgeInsets.fromLTRB(25.h, 11.v, 380.h, 20.v),
    //         onTap: () {
    //           onTapArrowLeft(context);
    //         }),
    //     styleType: Style.bgFill);
    return AppBar(
      // backgroundColor: Color(0xFFD4F4E4),
      // title: Text('Expenses'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(
              context); // Navigate back when the back button is pressed
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 18.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder9),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("Expense Type",
                  style: CustomTextStyles.titleMediumGray600_1)),
          Padding(
              padding: EdgeInsets.only(right: 14.h),
              child: Text("Individual",
                  style: CustomTextStyles.titleMediumGray600_1))
        ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 17.v),
        decoration: AppDecoration.outlineBlack900011
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Category",
                      style: CustomTextStyles.titleMediumTeal900)),
              SizedBox(height: 7.v),
              CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(13.h),
                  decoration: IconButtonStyleHelper.outlineGreen,
                  child: CustomImageView(imagePath: ImageConstant.imgSettings)),
              SizedBox(height: 3.v),
              Text("Food", style: CustomTextStyles.titleSmallGray600_2),
              SizedBox(height: 14.v),
              Container(
                  padding: EdgeInsets.fromLTRB(8.h, 14.v, 8.h, 15.v),
                  decoration: AppDecoration.outlineGray,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          CustomIconButton(
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              padding: EdgeInsets.all(16.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIconHome)),
                          SizedBox(height: 3.v),
                          Text("Home",
                              style: CustomTextStyles.titleSmallGray600_2),
                          SizedBox(height: 25.v),
                          CustomIconButton(
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              padding: EdgeInsets.all(16.h),
                              decoration: IconButtonStyleHelper.outlineOnError,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIconDonation)),
                          SizedBox(height: 3.v),
                          Text("Donations",
                              style: CustomTextStyles.titleSmallGray600_2),
                          SizedBox(height: 25.v),
                          CustomIconButton(
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              padding: EdgeInsets.all(14.h),
                              decoration: IconButtonStyleHelper.outlineTeal,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIconHealth)),
                          SizedBox(height: 3.v),
                          Text("Health",
                              style: CustomTextStyles.titleSmallGray600_2)
                        ]),
                        Padding(
                            padding: EdgeInsets.only(right: 7.h),
                            child: Column(children: [
                              Container(
                                  width: 172.h,
                                  margin:
                                      EdgeInsets.only(left: 3.h, right: 1.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Column(children: [
                                              CustomIconButton(
                                                  height: 50.adaptSize,
                                                  width: 50.adaptSize,
                                                  padding: EdgeInsets.all(14.h),
                                                  decoration: IconButtonStyleHelper
                                                      .outlineErrorContainerTL25,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgFacebookErrorcontainer)),
                                              SizedBox(height: 3.v),
                                              Text("Presents",
                                                  style: CustomTextStyles
                                                      .titleSmallGray600_2)
                                            ])),
                                        _buildIconDog(context, pet: "Beauty")
                                      ])),
                              SizedBox(height: 23.v),
                              SizedBox(
                                  width: 176.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(children: [
                                          CustomIconButton(
                                              height: 50.adaptSize,
                                              width: 50.adaptSize,
                                              padding: EdgeInsets.all(16.h),
                                              decoration: IconButtonStyleHelper
                                                  .outlineSecondaryContainer,
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCar)),
                                          SizedBox(height: 4.v),
                                          Text("Transport",
                                              style: CustomTextStyles
                                                  .titleSmallGray600_2)
                                        ]),
                                        Column(children: [
                                          CustomIconButton(
                                              height: 50.adaptSize,
                                              width: 50.adaptSize,
                                              padding: EdgeInsets.all(14.h),
                                              decoration: IconButtonStyleHelper
                                                  .outlinePurple,
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgIconClothes)),
                                          SizedBox(height: 4.v),
                                          Text("Clotting",
                                              style: CustomTextStyles
                                                  .titleSmallGray600_2)
                                        ])
                                      ])),
                              SizedBox(height: 24.v),
                              Container(
                                  width: 167.h,
                                  margin:
                                      EdgeInsets.only(left: 7.h, right: 1.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _buildIconDog(context, pet: "Pet"),
                                        _buildIconDog(context, pet: "others")
                                      ]))
                            ]))
                      ]))
            ]));
  }

  /// Common widget
  Widget _buildIconDog(
    BuildContext context, {
    required String pet,
  }) {
    return Column(children: [
      CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          padding: EdgeInsets.all(16.h),
          decoration: IconButtonStyleHelper.outlineBlueGrayTL25,
          child: CustomImageView(imagePath: ImageConstant.imgIconDog)),
      SizedBox(height: 3.v),
      Text(pet,
          style: CustomTextStyles.titleSmallGray600_2
              .copyWith(color: appTheme.gray600))
    ]);
  }

  /// Navigates to the transactionListsScreen when the action is triggered.
  onTapArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transactionListsScreen);
  }
}
