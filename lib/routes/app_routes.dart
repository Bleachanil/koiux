import 'package:flutter/material.dart';
import 'package:anil_kumar_s_application2/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:anil_kumar_s_application2/presentation/signin_screen/signin_screen.dart';
import 'package:anil_kumar_s_application2/presentation/register_screen/register_screen.dart';
import 'package:anil_kumar_s_application2/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:anil_kumar_s_application2/presentation/budget_individual_tab_container_screen/budget_individual_tab_container_screen.dart';
import 'package:anil_kumar_s_application2/presentation/transaction_lists_screen/transaction_lists_screen.dart';
import 'package:anil_kumar_s_application2/presentation/transaction_detail_screen/transaction_detail_screen.dart';
import 'package:anil_kumar_s_application2/presentation/add_screen/add_screen.dart';
import 'package:anil_kumar_s_application2/presentation/household_transaction_add_screen/household_transaction_add_screen.dart';
import 'package:anil_kumar_s_application2/presentation/household_division_popup_container_screen/household_division_popup_container_screen.dart';
import 'package:anil_kumar_s_application2/presentation/sidebar_screen/sidebar_screen.dart';
import 'package:anil_kumar_s_application2/presentation/household_list_screen/household_list_screen.dart';
import 'package:anil_kumar_s_application2/presentation/add_member_screen/add_member_screen.dart';
import 'package:anil_kumar_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String signinScreen = '/signin_screen';

  static const String registerScreen = '/register_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String budgetIndividualPage = '/budget_individual_page';

  static const String budgetIndividualTabContainerScreen =
      '/budget_individual_tab_container_screen';

  static const String budgetHouseholdPage = '/budget_household_page';

  static const String transactionListsScreen = '/transaction_lists_screen';

  static const String transactionDetailScreen = '/transaction_detail_screen';

  static const String addScreen = '/add_screen';

  static const String householdTransactionAddScreen =
      '/household_transaction_add_screen';

  static const String householdDivisionPopupPage =
      '/household_division_popup_page';

  static const String householdDivisionPopupContainerScreen =
      '/household_division_popup_container_screen';

  static const String sidebarScreen = '/sidebar_screen';

  static const String householdListScreen = '/household_list_screen';

  static const String addMemberScreen = '/add_member_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingScreen: (context) => OnboardingScreen(),
    signinScreen: (context) => SigninScreen(),
    registerScreen: (context) => RegisterScreen(),
    dashboardScreen: (context) => DashboardScreen(),
    budgetIndividualTabContainerScreen: (context) =>
        BudgetIndividualTabContainerScreen(),
    transactionListsScreen: (context) => TransactionListsScreen(),
    transactionDetailScreen: (context) => TransactionDetailScreen(),
    addScreen: (context) => AddScreen(),
    householdTransactionAddScreen: (context) => HouseholdTransactionAddScreen(),
    householdDivisionPopupContainerScreen: (context) =>
        HouseholdDivisionPopupContainerScreen(),
    sidebarScreen: (context) => SidebarScreen(),
    householdListScreen: (context) => HouseholdListScreen(),
    addMemberScreen: (context) => AddMemberScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
