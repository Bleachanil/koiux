import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({Key? key, required this.index})
      : super(
          key: key,
        );
  final int index;
  String name = 'xin';
  String imageName() {
    print('$index : index is here');
    switch (index) {
      case 0:
        name = 'hari';
        return ImageConstant.imgImage150x50;
      case 1:
        name = 'krishna';
        return ImageConstant.imgImage250x50;
      case 2:
        name = 'sonam';
        return ImageConstant.imgImage350x50;
      default:
        name = 'hari';
        return ImageConstant.imgImage150x50;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder25,
                  ),
                  child: CustomImageView(
                    imagePath: imageName(),
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      25.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 6.v,
                    bottom: 8.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "13 February 2022",
                        style: CustomTextStyles.bodySmallGray60001,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        name,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.outlineBlue,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
