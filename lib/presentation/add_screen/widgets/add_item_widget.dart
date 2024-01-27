import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddItemWidget extends StatelessWidget {
  const AddItemWidget({Key? key, required this.index})
      : super(
          key: key,
        );
  final int index;
  String imageName() {
    switch (index) {
      case 0:
        return ImageConstant.imgSettings;
      case 1:
        return ImageConstant.imgIconHome;
      case 2:
        return ImageConstant.imgIconDonation;
      case 3:
        return ImageConstant.imgIconHealth;
      case 4:
        return ImageConstant.imgFacebookErrorcontainer;
      case 5:
        return ImageConstant.imgCar;
      case 6:
        return ImageConstant.imgIconClothes;
      default:
        return ImageConstant.imageNotFound;
    }
  }

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
          imagePath: imageName(),
        ),
      ),
    );
  }
}
