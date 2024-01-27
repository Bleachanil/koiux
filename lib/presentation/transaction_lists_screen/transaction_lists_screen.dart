import '../transaction_lists_screen/widgets/transactionlists_item_widget.dart';
import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class TransactionListsScreen extends StatelessWidget {
  const TransactionListsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFD4F4E4),
              title: Text('Expenses'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(
                      context); // Navigate back when the back button is pressed
                },
              ),
            ),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  // _buildHeaderNavigation(context),
                  SizedBox(height: 50.v),
                  _buildTransactionLists(context)
                ]))));
  }

  /// Section Widget
  Widget _buildHeaderNavigation(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 11.v),
        decoration: AppDecoration.fillTeal,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeftGray600,
              height: 25.adaptSize,
              width: 25.adaptSize,
              margin: EdgeInsets.only(bottom: 10.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 37.h, top: 2.v, bottom: 8.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: " "),
                    
                    TextSpan(
                        text: "Expenses",
                        style: CustomTextStyles.titleLargeff002117)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Section Widget
  Widget _buildTransactionLists(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.v);
            },
            itemCount: 8,
            itemBuilder: (context, index) {
              return TransactionlistsItemWidget(onTapCardTransaction: () {
                onTapCardTransaction(context);
              });
            }));
  }

  /// Navigates to the transactionDetailScreen when the action is triggered.
  onTapCardTransaction(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transactionDetailScreen);
  }

  /// Navigates to the budgetIndividualTabContainerScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.budgetIndividualTabContainerScreen);
  }
}
