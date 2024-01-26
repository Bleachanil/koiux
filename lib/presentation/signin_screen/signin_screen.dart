import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_elevated_button.dart';
import 'package:anil_kumar_s_application2/widgets/custom_icon_button.dart';
import 'package:anil_kumar_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SigninScreen extends StatelessWidget {
  SigninScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 4.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 55.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 7.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("Sign in",
                                                style: theme
                                                    .textTheme.headlineLarge)),
                                        SizedBox(height: 101.v),
                                        Text("Email",
                                            style: CustomTextStyles
                                                .titleSmallBlack90001_1),
                                        SizedBox(height: 7.v),
                                        CustomTextFormField(
                                            controller: emailController),
                                        SizedBox(height: 25.v),
                                        Text("Password",
                                            style: CustomTextStyles
                                                .titleSmallBlack90001_1),
                                        SizedBox(height: 7.v),
                                        CustomTextFormField(
                                            controller: passwordController,
                                            hintText: "*******************",
                                            hintStyle:
                                                theme.textTheme.titleLarge!,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 11.v, 12.h, 11.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgIconsolideyeoff,
                                                    height: 18.adaptSize,
                                                    width: 18.adaptSize)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 40.v),
                                            obscureText: true,
                                            contentPadding: EdgeInsets.only(
                                                left: 12.h,
                                                top: 8.v,
                                                bottom: 8.v)),
                                        SizedBox(height: 5.v),
                                        Text("Password does not match",
                                            style: CustomTextStyles
                                                .labelLargeRedA10001),
                                        SizedBox(height: 48.v),
                                        CustomElevatedButton(
                                            height: 48.v,
                                            text: "Sign in",
                                            onPressed: () {
                                              onTapSignIn(context);
                                            }),
                                        SizedBox(height: 70.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 81.h),
                                            child: Text("Or sign up using",
                                                style: CustomTextStyles
                                                    .titleMediumGray400_1)),
                                        SizedBox(height: 13.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 15.h, right: 55.h),
                                            child: Row(children: [
                                              CustomIconButton(
                                                  height: 62.adaptSize,
                                                  width: 62.adaptSize,
                                                  padding: EdgeInsets.all(22.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .outlineBlack,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgContrast)),
                                              Spacer(flex: 50),
                                              CustomIconButton(
                                                  height: 62.adaptSize,
                                                  width: 62.adaptSize,
                                                  padding: EdgeInsets.all(22.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .outlineBlack,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgFacebook)),
                                              Spacer(flex: 50),
                                              CustomIconButton(
                                                  height: 62.adaptSize,
                                                  width: 62.adaptSize,
                                                  padding: EdgeInsets.all(22.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .outlineBlack,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMdiTwitter))
                                            ])),
                                        SizedBox(height: 71.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 46.h),
                                            child: Text(
                                                "Don’t have an account yet?",
                                                style: CustomTextStyles
                                                    .titleMediumBlack90001_1)),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 102.h),
                                            child: Text("Sing Up",
                                                style: CustomTextStyles
                                                    .headlineSmallGray40001))
                                      ]))))
                    ])))));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}
