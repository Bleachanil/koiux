import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 349.h,
        controller: controller,
        hintText: "Search your house member",
      ),
    );
  }
}
