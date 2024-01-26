import '../add_member_screen/widgets/userprofile_item_widget.dart';
import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:anil_kumar_s_application2/widgets/app_bar/appbar_title_searchview.dart';
import 'package:anil_kumar_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddMemberScreen extends StatelessWidget {
  AddMemberScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 33.v),
                child: Column(children: [
                  Text("Members",
                      style: CustomTextStyles.titleMediumBluegray900),
                  SizedBox(height: 19.v),
                  _buildUserProfile(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray600,
            margin: EdgeInsets.only(left: 17.h, top: 10.v, bottom: 21.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 11.h),
            hintText: "Search your house member",
            controller: searchController),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16.v);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return UserprofileItemWidget();
                })));
  }

  /// Navigates to the householdListScreen when the action is triggered.
  onTapArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.householdListScreen);
  }
}
