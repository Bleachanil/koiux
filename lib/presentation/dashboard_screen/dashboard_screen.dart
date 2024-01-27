import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/presentation/household_division_popup_page/household_division_popup_page.dart';
import 'package:anil_kumar_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHeaderNavigation(context),
                SizedBox(height: 14.v),
                _buildFrameThirtyThree(context),
                SizedBox(height: 24.v),
                _buildFrameFortyFour(context),
                SizedBox(height: 24.v),
                _buildFrameThirtyEight(context),
                SizedBox(height: 24.v),
                _buildNinetyThree(context),
                // SizedBox(height: 12.v),
                _buildSeventyFive(context),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: SizedBox(
                //     height: 632.v,
                //     width: 406.h,
                //     child: Stack(
                //       alignment: Alignment.bottomCenter,
                //       children: [
                //         _buildNinetyThree(context),
                //         _buildSeventyFive(context),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
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
      margin: EdgeInsets.only(right: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillTeal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 14.v),
          Text(
            "Dashboard",
            style: CustomTextStyles.titleMediumPrimaryContainer,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirtyThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 23.h,
        right: 11.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.outlineBlack
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 21.v,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "60,28",
                  style: CustomTextStyles.headlineLargeGray800Medium,
                ),
                Text(
                  "Total Expenses",
                  style: CustomTextStyles.titleMediumGray400,
                ),
                SizedBox(height: 24.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Food ",
                        style: CustomTextStyles.labelLargeff006492,
                      ),
                      TextSpan(
                        text: ":",
                        style: CustomTextStyles.bodySmallff8e928f,
                      ),
                      TextSpan(
                        text: " 423,55",
                        style: CustomTextStyles.labelLargeff8e928f,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "clothes",
                        style: CustomTextStyles.labelLargeff006c52,
                      ),
                      TextSpan(
                        text: ":",
                        style: CustomTextStyles.bodySmallff8e928f,
                      ),
                      TextSpan(
                        text: " 577,45",
                        style: CustomTextStyles.labelLargeff8e928f,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Container(
            width: 150,
            height: 150,
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 44.v,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: fs.Svg(
                  ImageConstant.imgGroup85,
                ),
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "423,55",
                    style: CustomTextStyles.bodySmallTeal700,
                  ),
                ),
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    " 577,45",
                    style: CustomTextStyles.bodySmallLightblue800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFortyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Expenses this year",
                  style: CustomTextStyles.labelLargeGray80001,
                ),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 113.v,
                        width: 112.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Rent",
                                style: CustomTextStyles.labelMediumPrimary,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9.h),
                              child: _buildEightySix(
                                context,
                                dynamicText1: "423,55",
                                dynamicText2: " 577,45",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 4.v,
                          bottom: 97.v,
                        ),
                        child: Text(
                          "Food",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.h),
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Expenses this month",
                  style: CustomTextStyles.labelLargeGray80001,
                ),
                SizedBox(height: 15.v),
                SizedBox(
                  height: 113.v,
                  width: 146.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "Mâncare",
                            style: CustomTextStyles.bodySmallWhiteA700Light,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Rent",
                          style: CustomTextStyles.labelMediumPrimary,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 11.v,
                            right: 7.h,
                          ),
                          child: Text(
                            "Food",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          right: 36.h,
                        ),
                        child: _buildEightySix(
                          context,
                          dynamicText1: "423,55",
                          dynamicText2: " 577,45",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirtyEight(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 23.h,
        right: 11.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Expenses",
            style: CustomTextStyles.titleSmallGray80001,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 11.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "100",
                        style: CustomTextStyles.bodySmallLight,
                      ),
                      SizedBox(height: 69.v),
                      Text(
                        "50",
                        style: CustomTextStyles.bodySmallLight,
                      ),
                      SizedBox(height: 75.v),
                      Text(
                        "0",
                        style: CustomTextStyles.bodySmallLight,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Column(
                      children: [
                        SizedBox(
                          // height: 183.v,
                          width: 335.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 182.v,
                                        child: VerticalDivider(
                                          width: 2.h,
                                          thickness: 2.v,
                                          color: appTheme.gray500,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 17.h,
                                          top: 92.v,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "40",
                                              style:
                                                  CustomTextStyles.bodySmall_1,
                                            ),
                                            SizedBox(height: 1.v),
                                            Container(
                                              height: 74.v,
                                              width: 35.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.teal5001,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                  top: Radius.circular(2.h),
                                                ),
                                                border: Border.all(
                                                  color: appTheme.greenA200,
                                                  width: 1.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 29.h,
                                          top: 6.v,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "88",
                                              style:
                                                  CustomTextStyles.bodySmall_1,
                                            ),
                                            SizedBox(height: 1.v),
                                            Container(
                                              height: 159.v,
                                              width: 35.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.blue50,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                  top: Radius.circular(2.h),
                                                ),
                                                border: Border.all(
                                                  color: appTheme.blue500,
                                                  width: 1.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 29.h,
                                          top: 56.v,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "60",
                                              style:
                                                  CustomTextStyles.bodySmall_1,
                                            ),
                                            SizedBox(height: 1.v),
                                            Container(
                                              height: 110.v,
                                              width: 35.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.red100,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                  top: Radius.circular(2.h),
                                                ),
                                                border: Border.all(
                                                  color: appTheme.redA100,
                                                  width: 1.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 29.h,
                                          top: 102.v,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "35",
                                              style:
                                                  CustomTextStyles.bodySmall_1,
                                            ),
                                            Container(
                                              height: 65.v,
                                              width: 35.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.teal5001,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                  top: Radius.circular(2.h),
                                                ),
                                                border: Border.all(
                                                  color: appTheme.greenA200,
                                                  width: 1.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 29.h,
                                          top: 33.v,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "70",
                                              style:
                                                  CustomTextStyles.bodySmall_1,
                                            ),
                                            Container(
                                              height: 134.v,
                                              width: 35.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.blue50,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                  top: Radius.circular(2.h),
                                                ),
                                                border: Border.all(
                                                  color: appTheme.blue500,
                                                  width: 1.h,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  width: 335.h,
                                  child: Divider(
                                    color: appTheme.gray500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Container(
                          width: 280.h,
                          margin: EdgeInsets.symmetric(horizontal: 27.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Jan",
                                style: theme.textTheme.bodySmall,
                              ),
                              Spacer(
                                flex: 27,
                              ),
                              Text(
                                "Feb",
                                style: theme.textTheme.bodySmall,
                              ),
                              Spacer(
                                flex: 26,
                              ),
                              Text(
                                "Mar  ",
                                style: theme.textTheme.bodySmall,
                              ),
                              Spacer(
                                flex: 24,
                              ),
                              Text(
                                "April",
                                style: theme.textTheme.bodySmall,
                              ),
                              Spacer(
                                flex: 22,
                              ),
                              Text(
                                "June",
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyThree(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 24.v),
        child: IntrinsicWidth(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.v),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "This month expense",
                    style: CustomTextStyles.titleSmallGray80001,
                  ),
                ),
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    // color: Colors.red,
                    height: 251.v,
                    width: 387.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          // color: Colors.red,
                          imagePath: ImageConstant.imgHorizontalLines,
                          height: 147.v,
                          width: 190.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            right: 10.h,
                            bottom: 37.v,
                          ),
                        ),
                        CustomImageView(
                          // color: Colors.red,
                          imagePath: ImageConstant.imgVerticalLines,
                          height: 148.v,
                          width: 290.h,
                          alignment: Alignment.topLeft,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 156.h,
                              right: 209.h,
                              bottom: 30.v,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "80",
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 14.v),
                                Text(
                                  "60",
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 20.v),
                                Text(
                                  "40",
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 21.v),
                                Text(
                                  "20",
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 21.v),
                                Text(
                                  "0",
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 187.h,
                              top: 219.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 33.h,
                                  child: Text(
                                    "10\nMay",
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                SizedBox(
                                  width: 34.h,
                                  child: Text(
                                    "20 \nMay",
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                SizedBox(
                                  width: 25.h,
                                  child: Text(
                                    "30\nMay",
                                    maxLines: null,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLineArea,
                          height: 103.v,
                          width: 190.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            right: 10.h,
                            bottom: 37.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPoints,
                          height: 93.v,
                          width: 192.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(
                            right: 10.h,
                            bottom: 49.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder2,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text(
                "Comparing between periods",
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallGray80001,
              ),
            ),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.only(
                left: 1.h,
                right: 19.h,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "8990",
                        textAlign: TextAlign.right,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        "60,40",
                        textAlign: TextAlign.right,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 19.v),
                      Text(
                        "40,50",
                        textAlign: TextAlign.right,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 20.v),
                      Text(
                        "200",
                        textAlign: TextAlign.right,
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 20.v),
                      Text(
                        "0",
                        textAlign: TextAlign.right,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Container(
                    height: 149.v,
                    width: 282.h,
                    margin: EdgeInsets.only(left: 6.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHorizontalLinesGray20002,
                          height: 148.v,
                          width: 277.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVerticalLines,
                          height: 149.v,
                          width: 276.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLineAreaBlue500,
                          height: 134.v,
                          width: 277.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPointsBlue500,
                          height: 124.v,
                          width: 282.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLineAreaRedA100,
                          height: 134.v,
                          width: 277.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPointsRedA100,
                          height: 94.v,
                          width: 282.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 12.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLineAreaOrange200,
                          height: 89.v,
                          width: 277.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPointsOrange200,
                          height: 79.v,
                          width: 282.h,
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 12.v),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 57.h,
                  right: 22.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 31.h,
                      child: Text(
                        "10 \nMay",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 33,
                    ),
                    SizedBox(
                      width: 32.adaptSize,
                      child: Text(
                        "20 \nMay",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 33,
                    ),
                    SizedBox(
                      width: 23.h,
                      child: Text(
                        "30 \nMay",
                        maxLines: null,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 33,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.v),
                      child: Text(
                        "Today",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.v),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  right: 10.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.orange200,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "One year ago",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.teal100,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "Two years ago",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.redA100,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "Present",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.v),
            Container(
              decoration: AppDecoration.outlineTeal.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder2,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 105.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineTeal300,
                      child: Text(
                        "Food",
                        style: CustomTextStyles.labelLargeTeal300,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 105.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineTeal300,
                      child: Text(
                        "Clothes",
                        style: CustomTextStyles.labelLargeTeal300,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 105.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineTeal3001,
                      child: Text(
                        "Travel",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildEightySix(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 29.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup86,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              dynamicText1,
              style: CustomTextStyles.bodySmallTeal70010.copyWith(
                color: appTheme.teal700,
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              dynamicText2,
              style: CustomTextStyles.bodySmallLightblue80010.copyWith(
                color: appTheme.lightBlue800,
              ),
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
