import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  const UserprofilesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder32,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1,
              height: 64.adaptSize,
              width: 64.adaptSize,
              radius: BorderRadius.circular(
                32.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 4.v),
          Text(
            "xian",
            style: CustomTextStyles.bodySmallGray800,
          ),
        ],
      ),
    );
  }
}
