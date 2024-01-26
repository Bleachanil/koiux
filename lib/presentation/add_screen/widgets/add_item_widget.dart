import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddItemWidget extends StatelessWidget {
  const AddItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomIconButton(
        height: 40.adaptSize,
        width: 40.adaptSize,
        padding: EdgeInsets.all(11.h),
        decoration: IconButtonStyleHelper.outlineSecondaryContainerTL20,
        child: CustomImageView(
          imagePath: ImageConstant.imgCar,
        ),
      ),
    );
  }
}
