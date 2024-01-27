import '../budget_individual_page/widgets/cardtransactionlist_item_widget.dart';
import 'package:anil_kumar_s_application2/core/app_export.dart';
import 'package:anil_kumar_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class BudgetIndividualPage extends StatefulWidget {
  const BudgetIndividualPage({Key? key}) : super(key: key);

  @override
  BudgetIndividualPageState createState() => BudgetIndividualPageState();
}

class BudgetIndividualPageState extends State<BudgetIndividualPage>
    with AutomaticKeepAliveClientMixin<BudgetIndividualPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  SizedBox(height: 35.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        _buildTotalExpenseRow(context),
                        SizedBox(height: 35.v),
                        CustomOutlinedButton(
                            decoration:
                                BoxDecoration(color: theme.colorScheme.primary),
                            text: "Expenses",
                            margin: EdgeInsets.only(left: 6.h)),
                        SizedBox(height: 12.v),
                        Text("Cash",
                            style: CustomTextStyles.titleMediumBluegray900),
                        SizedBox(height: 16.v),
                        _buildCardTransactionList(context),
                        SizedBox(height: 14.v),
                        GestureDetector(
                            onTap: () {
                              onTapTxtSeeAll(context);
                            },
                            child: Text("See all",
                                style:
                                    CustomTextStyles.bodyLargeErrorContainer))
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildTotalExpenseRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 29.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder2),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Total Expense",
                      style: CustomTextStyles.titleSmallff707974),
                  TextSpan(
                      text: ":", style: CustomTextStyles.titleSmallff707974)
                ]),
                textAlign: TextAlign.left),
            SizedBox(height: 1.v),
            Text("Food:", style: CustomTextStyles.titleSmallGray500),
            SizedBox(height: 3.v),
            Text("Clothes: ", style: CustomTextStyles.titleSmallGray500),
            SizedBox(height: 3.v),
            Text("Travel:", style: theme.textTheme.titleSmall)
          ]),
          Column(children: [
            Align(
                alignment: Alignment.centerRight,
                child:
                    Text("60,28  ", style: CustomTextStyles.titleSmallGray600)),
            SizedBox(height: 3.v),
            Text("423,55", style: CustomTextStyles.titleSmallPrimary),
            SizedBox(height: 3.v),
            Text("577,45", style: CustomTextStyles.titleSmallTeal40001),
            SizedBox(height: 1.v),
            Align(
                alignment: Alignment.centerRight,
                child: Text(" 0", style: theme.textTheme.titleSmall))
          ])
        ]));
  }

  /// Section Widget
  Widget _buildCardTransactionList(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return CardtransactionlistItemWidget();
        });
  }

  /// Navigates to the transactionListsScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.transactionListsScreen);
  }
}
