import 'package:fast_food/core/app_export.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_nine_page/iphone_14_15_pro_nine_page.dart';
import 'package:fast_food/widgets/app_bar/appbar_title.dart';
import 'package:fast_food/widgets/app_bar/appbar_title_image.dart';
import 'package:fast_food/widgets/app_bar/custom_app_bar.dart';
import 'package:fast_food/widgets/custom_bottom_app_bar.dart';
import 'package:fast_food/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class Iphone1415ProSevenScreen extends StatelessWidget {
  Iphone1415ProSevenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h),
                child: Column(children: [
                  SizedBox(height: 28.v),
                  _buildPizzaSection(context),
                  SizedBox(height: 11.v),
                  _buildBeefBurgerSection(context),
                  SizedBox(height: 5.v),
                  _buildDessertSection(context),
                  SizedBox(height: 83.v),
                  _buildTotalPriceSection(context)
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
          margin: EdgeInsets.only(top: 12.v, bottom: 6.v),
          onTap: () {
            onTapArrowLeft(context);
          }),
      AppbarTitleImage(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(left: 445.h, top: 12.v, bottom: 6.v),
          onTap: () {
            onTapArrowLeft1(context);
          }),
      AppbarTitle(
          text: "Cart", margin: EdgeInsets.only(left: 84.h, right: 183.h))
    ]));
  }

  /// Section Widget
  Widget _buildPizzaSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 9.h),
        padding: EdgeInsets.symmetric(vertical: 7.v),
        decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgPiRemovebgPreview70x70,
                  height: 98.v,
                  width: 100.h),
              Container(
                  width: 227.h,
                  margin: EdgeInsets.only(top: 5.v, right: 15.h, bottom: 15.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 13.v, bottom: 5.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pizza",
                                      style: theme.textTheme.titleSmall),
                                  SizedBox(height: 20.v),
                                  Text("20",
                                      style: CustomTextStyles.titleSmallLime900)
                                ])),
                        _buildBurgerSection(context, labelText: "2")
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildBeefBurgerSection(BuildContext context) {
    return SizedBox(
        height: 112.v,
        width: 358.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(left: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v),
                  decoration: AppDecoration
                      .gradientSecondaryContainerToOnPrimaryContainer
                      .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 100.h, top: 15.v, bottom: 15.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Beef Burger",
                                      style: theme.textTheme.titleSmall),
                                  SizedBox(height: 18.v),
                                  Text("10",
                                      style: CustomTextStyles.titleSmallLime900)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10.v),
                            child: _buildBurgerSection(context, labelText: "2"))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgBaRemovebgPreview,
              height: 90.v,
              width: 101.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 6.v))
        ]));
  }

  /// Section Widget
  Widget _buildDessertSection(BuildContext context) {
    return SizedBox(
        height: 217.v,
        width: 357.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 105.v),
              child: _buildDessertSection2(context,
                  textComponent: "Dezzert",
                  textComponent1: "5",
                  textComponent2: "2")),
          Padding(
              padding: EdgeInsets.only(top: 105.v),
              child: _buildDessertSection2(context,
                  textComponent: "Dezzert",
                  textComponent1: "5",
                  textComponent2: "2"))
        ]));
  }

  /// Section Widget
  Widget _buildTotalPriceSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 59.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total price",
                            style: CustomTextStyles
                                .headlineSmallOnPrimaryContainer),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("40",
                                style: CustomTextStyles.headlineSmallLime900))
                      ])),
              Container(
                  margin: EdgeInsets.only(bottom: 11.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 31.h, vertical: 20.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup31),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 44.v),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Order ",
                                  style: CustomTextStyles
                                      .headlineSmallErrorContainer),
                              TextSpan(
                                  text: "Now",
                                  style: CustomTextStyles
                                      .headlineSmallErrorContainerBold_1)
                            ]),
                            textAlign: TextAlign.left)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildBurgerSection(
    BuildContext context, {
    required String labelText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 3.v),
        decoration: AppDecoration.fillBluegray10003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgLightBulb,
                  height: 15.v,
                  width: 22.h),
              SizedBox(height: 9.v),
              Text(labelText,
                  style: CustomTextStyles.titleSmallBlue900
                      .copyWith(color: appTheme.blue900)),
              SizedBox(height: 9.v),
              CustomImageView(
                  imagePath: ImageConstant.imgLightBulb,
                  height: 15.v,
                  width: 22.h),
              SizedBox(height: 4.v)
            ]));
  }

  /// Common widget
  Widget _buildDessertSection2(
    BuildContext context, {
    required String textComponent,
    required String textComponent1,
    required String textComponent2,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 12.v),
        decoration: AppDecoration.gradientSecondaryContainerToOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgDezRemovebgPreview,
              height: 61.v,
              width: 91.h,
              margin: EdgeInsets.only(top: 10.v, bottom: 17.v)),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 15.v, bottom: 15.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(textComponent,
                        style: theme.textTheme.titleSmall!
                            .copyWith(color: appTheme.black900)),
                    SizedBox(height: 19.v),
                    Text(textComponent1,
                        style: CustomTextStyles.titleSmallLime900
                            .copyWith(color: appTheme.lime900))
                  ])),
          Spacer(),
          Container(
              margin: EdgeInsets.only(right: 6.h, bottom: 10.v),
              padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 3.v),
              decoration: AppDecoration.fillBluegray10003
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLightBulb,
                        height: 15.v,
                        width: 22.h),
                    SizedBox(height: 9.v),
                    Text(textComponent2,
                        style: CustomTextStyles.titleSmallBlue900
                            .copyWith(color: appTheme.blue900)),
                    SizedBox(height: 9.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgLightBulb,
                        height: 15.v,
                        width: 22.h),
                    SizedBox(height: 4.v)
                  ]))
        ]));
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
}
