import '../budget_household_page/widgets/userprofilesection_item_widget.dart';
import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_elevated_button.dart';
import 'package:anil_kumar_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BudgetHouseholdPage extends StatefulWidget {
  const BudgetHouseholdPage({Key? key})
      : super(
          key: key,
        );

  @override
  BudgetHouseholdPageState createState() => BudgetHouseholdPageState();
}

class BudgetHouseholdPageState extends State<BudgetHouseholdPage>
    with AutomaticKeepAliveClientMixin<BudgetHouseholdPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  right: 12.h,
                ),
                child: Column(
                  children: [
                    _buildBalanceSection(context),
                    SizedBox(height: 14.v),
                    _buildUserProfileSection(context),
                    SizedBox(height: 28.v),
                    CustomOutlinedButton(
                      text: "Expenses",
                      margin: EdgeInsets.symmetric(horizontal: 5.h),
                    ),
                    SizedBox(height: 27.v),
                    _buildDrawerNavSection(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBalanceSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total balance :",
                  style: CustomTextStyles.titleSmallGray600_2,
                ),
                SizedBox(height: 3.v),
                Text(
                  "xian:",
                  style: CustomTextStyles.titleSmallOrange600,
                ),
                SizedBox(height: 3.v),
                Text(
                  "tian: ",
                  style: CustomTextStyles.titleSmallLightblue800,
                ),
                SizedBox(height: 2.v),
                Text(
                  "dian:",
                  style: CustomTextStyles.titleSmallTeal500,
                ),
                Text(
                  "mian",
                  style: CustomTextStyles.titleSmallTeal500,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "1500,28 ",
                  style: CustomTextStyles.titleSmallGray600_2,
                ),
                SizedBox(height: 3.v),
                Text(
                  "423,55",
                  style: CustomTextStyles.titleSmallOrange600,
                ),
                SizedBox(height: 3.v),
                Text(
                  "577,45",
                  style: CustomTextStyles.titleSmallLightblue800,
                ),
                SizedBox(height: 1.v),
                Text(
                  " 0",
                  style: CustomTextStyles.titleSmallTeal500,
                ),
                Text(
                  " 0",
                  style: CustomTextStyles.titleSmallTeal500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return SizedBox(
      height: 83.v,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 18.h,
          right: 22.h,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 35.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return UserprofilesectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDrawerNavSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.h),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Column(
                children: [
                  _buildFrameSeventyTwo(
                    context,
                    arrowUpImage: ImageConstant.imgArrowDown,
                    waterBillText: "Gas bill",
                    totalEurosText: " Total: 270 aud",
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillRedA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgImage4,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 12.v,
                            bottom: 10.v,
                          ),
                          child: Text(
                            "89,05",
                            style: CustomTextStyles.bodyMediumRegular,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            top: 11.v,
                            bottom: 11.v,
                          ),
                          child: Text(
                            "aud",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Spacer(
                          flex: 32,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 13.v,
                            bottom: 11.v,
                          ),
                          child: Text(
                            "30 days left",
                            style: CustomTextStyles.labelLargeRed600,
                          ),
                        ),
                        Spacer(
                          flex: 67,
                        ),
                        CustomElevatedButton(
                          width: 71.h,
                          text: "paid",
                          margin: EdgeInsets.symmetric(vertical: 4.v),
                          buttonTextStyle: CustomTextStyles.bodySmallWhiteA700,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillGreenA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder2,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder20,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage140x40,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  radius: BorderRadius.circular(
                                    20.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 6.h,
                                  top: 12.v,
                                  bottom: 10.v,
                                ),
                                child: Text(
                                  "89,05",
                                  style: CustomTextStyles.bodyMediumRegular,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 6.h,
                                  top: 11.v,
                                  bottom: 10.v,
                                ),
                                child: Text(
                                  "aud",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 13.v,
                                  bottom: 10.v,
                                ),
                                child: Text(
                                  "30 February 2022",
                                  style: CustomTextStyles.labelLargeGray500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconCheck,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 12.v),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(6.h, 12.v, 22.h, 12.v),
                          child: Text(
                            "Paid",
                            style: CustomTextStyles.bodySmallTeal500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.v),
              _buildFrameSeventyTwo(
                context,
                arrowUpImage: ImageConstant.imgArrowUp,
                waterBillText: "Water bill",
                totalEurosText: " Total: 270 aud",
              ),
              SizedBox(height: 1.v),
              _buildFrameSeventyTwo(
                context,
                arrowUpImage: ImageConstant.imgArrowUp,
                waterBillText: "Power bill",
                totalEurosText: " Total: 270 aud",
              ),
              SizedBox(height: 1.v),
              _buildFrameSeventyTwo(
                context,
                arrowUpImage: ImageConstant.imgArrowUp,
                waterBillText: "Mortgage",
                totalEurosText: " Total: 270 aud",
              ),
            ],
          ),
          SizedBox(height: 1.v),
          _buildFrameSeventyTwo(
            context,
            arrowUpImage: ImageConstant.imgArrowUp,
            waterBillText: "Loans",
            totalEurosText: " Total: 270 aud",
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgIconAdauga,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameSeventyTwo(
    BuildContext context, {
    required String arrowUpImage,
    required String waterBillText,
    required String totalEurosText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: arrowUpImage,
            height: 5.v,
            width: 10.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              waterBillText,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.gray800,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: " Total: 270 ",
                    style: CustomTextStyles.bodySmallff444745,
                  ),
                  TextSpan(
                    text: "aud",
                    style: CustomTextStyles.bodySmallff444745,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIconEdit,
            height: 19.adaptSize,
            width: 19.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
          ),
        ],
      ),
    );
  }
}
