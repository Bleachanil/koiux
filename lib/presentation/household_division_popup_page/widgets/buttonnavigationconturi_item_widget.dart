import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonnavigationconturiItemWidget extends StatelessWidget {
  const ButtonnavigationconturiItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomImageView(
          imagePath: ImageConstant.imgIconcheckWhiteA700,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
    );
  }
}
