import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 31.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapProfile(context);
                          },
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgFrame1,
                                    height: 49.adaptSize,
                                    width: 49.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 12.h, bottom: 3.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Hello",
                                              style: CustomTextStyles
                                                  .bodySmallBluegray400),
                                          SizedBox(height: 4.v),
                                          Text("xian",
                                              style: CustomTextStyles
                                                  .titleLargeOnPrimary)
                                        ]))
                              ])),
                      SizedBox(height: 20.v),
                      Divider(color: appTheme.indigo50),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("Account",
                              style: CustomTextStyles.titleMediumBlack90001)),
                      SizedBox(height: 11.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLock,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, bottom: 3.v),
                            child: Text("Profile",
                                style: theme.textTheme.titleMedium))
                      ]),
                      SizedBox(height: 13.v),
                      GestureDetector(
                          onTap: () {
                            onTapMenuItem(context);
                          },
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgNavHousehold,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 16.h, bottom: 3.v),
                                child: Text("Household",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 13.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUser,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, bottom: 3.v),
                            child: Text("Notifications",
                                style: theme.textTheme.titleMedium))
                      ]),
                      SizedBox(height: 13.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIonMailOutline,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, top: 3.v),
                            child: Text("Security",
                                style: theme.textTheme.titleMedium))
                      ]),
                      SizedBox(height: 13.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLocation,
                            height: 24.v,
                            width: 20.h),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, top: 3.v),
                            child: Text("Privacy",
                                style: theme.textTheme.titleMedium))
                      ]),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Support & About",
                              style: CustomTextStyles.titleMediumBlack90001)),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgVideoCamera,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(bottom: 4.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h, top: 3.v),
                                child: Text("Report a problem",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 18.v,
                                width: 20.h,
                                margin: EdgeInsets.only(bottom: 4.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h, top: 3.v),
                                child: Text("Support",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgShare,
                                height: 21.v,
                                width: 18.h),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("Terms and Policies",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 9.v),
                      Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRate,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h, bottom: 3.v),
                            child: Text("Rate us",
                                style: theme.textTheme.titleMedium))
                      ]),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("Login",
                              style: CustomTextStyles.titleMediumBlack90001)),
                      SizedBox(height: 16.v),
                      GestureDetector(
                          onTap: () {
                            onTapMenuItem1(context);
                          },
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(bottom: 4.v)),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h, top: 3.v),
                                child: Text("Log Out",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }

  /// Navigates to the householdListScreen when the action is triggered.
  onTapMenuItem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.householdListScreen);
  }

  /// Navigates to the signinScreen when the action is triggered.
  onTapMenuItem1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signinScreen);
  }
}
