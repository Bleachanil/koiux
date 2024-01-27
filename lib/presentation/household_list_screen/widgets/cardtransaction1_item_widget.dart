import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cardtransaction1ItemWidget extends StatelessWidget {
  Cardtransaction1ItemWidget({Key? key, required this.index})
      : super(
          key: key,
        );
  final int index;
  String name = 'xin';
  String imageName() {
    print('$index : index is here');
    switch (index) {
      case 0:
        name = 'xin';
        return ImageConstant.imgImage150x50;
      case 1:
      name = 'lin';
        return ImageConstant.imgImage250x50;
      case 2:
      name = 'kim';
        return ImageConstant.imgImage350x50;
      default:
      name = 'jim';
        return ImageConstant.imgImage150x50;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 158.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  padding: EdgeInsets.symmetric(vertical: 7.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "12 February 2022",
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
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpRedA200,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 17.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }
}
