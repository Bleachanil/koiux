import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardtransactionlistItemWidget extends StatelessWidget {
  const CardtransactionlistItemWidget({Key? key})
      : super(
          key: key,
        );

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
            width: 155.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(16.h),
                  decoration: IconButtonStyleHelper.outlineSecondaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCar,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 8.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "12 february 2022",
                        style: CustomTextStyles.bodySmallGray60001,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "Car",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.v),
            child: Text(
              "500 aud",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
