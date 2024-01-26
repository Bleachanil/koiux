import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_elevated_button.dart';
import 'package:anil_kumar_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 55.h, vertical: 90.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 7.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("Sign Up",
                                          style: CustomTextStyles
                                              .headlineLargeGray800)),
                                  SizedBox(height: 76.v),
                                  Text("Email",
                                      style: CustomTextStyles
                                          .titleSmallBlack90001),
                                  SizedBox(height: 7.v),
                                  CustomTextFormField(
                                      controller: emailController),
                                  SizedBox(height: 28.v),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _buildInputFirstName(context),
                                        _buildInputLastName(context)
                                      ]),
                                  SizedBox(height: 28.v),
                                  Text("Password",
                                      style: CustomTextStyles
                                          .titleSmallBlack90001_1),
                                  SizedBox(height: 7.v),
                                  CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "********",
                                      hintStyle: theme.textTheme.titleLarge!,
                                      textInputAction: TextInputAction.done,
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
                                          left: 12.h, top: 8.v, bottom: 8.v)),
                                  SizedBox(height: 5.v),
                                  Text("At least 8 characters",
                                      style:
                                          CustomTextStyles.labelLargeRedA10001),
                                  SizedBox(height: 62.v),
                                  CustomElevatedButton(
                                      height: 49.v,
                                      text: "Create Account",
                                      onPressed: () {
                                        onTapCreateAccount(context);
                                      }),
                                  Spacer(),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("Already a member? ",
                                          style: CustomTextStyles
                                              .titleMediumBlack90001_1)),
                                  SizedBox(height: 12.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("Sign in",
                                          style: CustomTextStyles
                                              .headlineSmallTeal40001))
                                ])))))));
  }

  /// Section Widget
  Widget _buildInputFirstName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 5.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("First Name",
                  style: CustomTextStyles.titleSmallBlack90001_1),
              SizedBox(height: 7.v),
              CustomTextFormField(width: 155.h, controller: firstNameController)
            ])));
  }

  /// Section Widget
  Widget _buildInputLastName(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Last Name", style: CustomTextStyles.titleSmallBlack90001_1),
              SizedBox(height: 7.v),
              CustomTextFormField(width: 155.h, controller: lastNameController)
            ])));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dashboardScreen);
  }
}
