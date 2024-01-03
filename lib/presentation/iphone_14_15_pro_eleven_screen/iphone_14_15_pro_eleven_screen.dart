import '../iphone_14_15_pro_eleven_screen/widgets/paymentsummary_item_widget.dart';
import 'package:fast_food/core/app_export.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_nine_page/iphone_14_15_pro_nine_page.dart';
import 'package:fast_food/widgets/app_bar/appbar_title.dart';
import 'package:fast_food/widgets/app_bar/appbar_title_image.dart';
import 'package:fast_food/widgets/app_bar/custom_app_bar.dart';
import 'package:fast_food/widgets/custom_bottom_app_bar.dart';
import 'package:fast_food/widgets/custom_elevated_button.dart';
import 'package:fast_food/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProElevenScreen extends StatelessWidget {
  Iphone1415ProElevenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(children: [
                  SizedBox(height: 25.v),
                  _buildPaymentSummary(context),
                  SizedBox(height: 13.v),
                  _buildOrderSummary(context)
                ])),
            bottomNavigationBar: _buildBottomAppBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 62,
                width: 64,
                backgroundColor: theme.colorScheme.secondaryContainer,
                child: CustomImageView(
                    imagePath: ImageConstant.imgHome,
                    height: 31.0.v,
                    width: 32.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Row(children: [
      AppbarTitleImage(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(top: 8.v, bottom: 10.v),
          onTap: () {
            onTapArrowLeft(context);
          }),
      AppbarTitleImage(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(left: 445.h, top: 8.v, bottom: 10.v),
          onTap: () {
            onTapArrowLeft1(context);
          }),
      AppbarTitle(
          text: "Payment", margin: EdgeInsets.only(left: 84.h, right: 115.h))
    ]));
  }

  /// Section Widget
  Widget _buildPaymentSummary(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return PaymentsummaryItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildOrderSummary(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 9.h, right: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 19.v),
        decoration: AppDecoration.fillSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 53.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Selected",
                            style: CustomTextStyles.bodyMediumLight),
                        Text("4", style: theme.textTheme.bodyMedium)
                      ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(right: 41.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Amount", style: theme.textTheme.bodyMedium),
                        Text(" 40", style: theme.textTheme.bodyMedium)
                      ])),
              SizedBox(height: 4.v),
              Padding(
                  padding: EdgeInsets.only(right: 46.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text("Delivery",
                                style: theme.textTheme.bodyMedium)),
                        Text(" 5", style: theme.textTheme.bodyMedium)
                      ])),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(right: 40.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: Text("Total",
                                style: theme.textTheme.titleSmall)),
                        Padding(
                            padding: EdgeInsets.only(bottom: 5.v),
                            child: Text(" 45",
                                style:
                                    CustomTextStyles.titleSmallErrorContainer))
                      ])),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                  height: 46.v,
                  text: "Pay Now",
                  margin: EdgeInsets.only(left: 22.h, right: 31.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientBlueAToPrimaryDecoration,
                  buttonTextStyle: CustomTextStyles.headlineSmallIndigoA700,
                  onPressed: () {
                    onTapPayNow(context);
                  }),
              SizedBox(height: 4.v)
            ]));
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Rewind:
        return AppRoutes.iphone1415ProNinePage;
      case BottomBarEnum.Favoritegray400:
        return "/";
      case BottomBarEnum.Addshoppingcart:
        return "/";
      case BottomBarEnum.Person:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone1415ProNinePage:
        return Iphone1415ProNinePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft1(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone1415ProFourScreen when the action is triggered.
  onTapPayNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProFourScreen);
  }
}
