import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget({Key? key, required this.index})
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
      case 3:
        name = 'Ronak';
        return ImageConstant.imgImage150x50;
      default:
        name = 'hari';
        return ImageConstant.imgImage150x50;
    }
  }

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
              imagePath: imageName(),
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
            name,
            style: CustomTextStyles.bodySmallGray800,
          ),
        ],
      ),
    );
  }
}
