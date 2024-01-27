import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrameninetyfourItemWidget extends StatefulWidget {
  FrameninetyfourItemWidget(
      {Key? key,
      required this.index,
      required this.regenerateList,
      required this.selectedListIndex})
      : super(
          key: key,
        );
  final int index;
  final Function regenerateList;
  int selectedListIndex;

  @override
  State<FrameninetyfourItemWidget> createState() =>
      _FrameninetyfourItemWidgetState();
}

class _FrameninetyfourItemWidgetState extends State<FrameninetyfourItemWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 7.v,
        right: 30.h,
        bottom: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        widget.index == 0 ? " Individual" : " Household",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgIconcheckWhiteA700,
        height: 16.adaptSize,
        width: 16.adaptSize,
        margin: EdgeInsets.only(right: 4.h),
      ),
      selected: widget.index == widget.selectedListIndex ? true : false,
      backgroundColor: appTheme.whiteA700,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray400,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
      onSelected: (value) {
        print('${(widget.index)} index anil');
        setState(() {
          widget.regenerateList(widget.index);
          // Update widget.index based on the tap event
          // widget.index = (widget.index == 0) ? 1 : 0;

          // Update selectedIndex accordingly
          // selectedIndex = value ? 1 : 0;

          // // Perform navigation or other actions here
          // if (widget.index == 1) {
          //   Navigator.pushNamed(context, AppRoutes.householdDivisionPopupContainerScreen);
          // }
        });
      },
    );
  }
}
