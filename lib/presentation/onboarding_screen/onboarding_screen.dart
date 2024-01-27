import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding:
                    EdgeInsets.symmetric(horizontal: 52.h, vertical: 163.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 41.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage2,
                          height: 279.v,
                          width: 326.h),
                      SizedBox(height: 26.v),
                      SizedBox(
                          width: 184.h,
                          child: Text("Take Control of Your Finances",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleLargeBlack90001
                                  .copyWith(height: 1.40))),
                      Spacer(),
                      CustomElevatedButton(
                          height: 39.v,
                          text: "Start",
                          margin: EdgeInsets.only(left: 12.h, right: 11.h),
                          buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
                          onPressed: () {
                            onTapStart(context);
                          })
                    ]))));
  }

  /// Navigates to the signinScreen when the action is triggered.
  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signinScreen); 
  }
}
