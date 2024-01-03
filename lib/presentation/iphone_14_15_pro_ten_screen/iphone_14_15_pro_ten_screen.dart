import 'package:fast_food/core/app_export.dart';
import 'package:fast_food/presentation/iphone_14_15_pro_nine_page/iphone_14_15_pro_nine_page.dart';
import 'package:fast_food/widgets/custom_bottom_app_bar.dart';
import 'package:fast_food/widgets/custom_floating_button.dart';
import 'package:fast_food/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProTenScreen extends StatelessWidget {
  Iphone1415ProTenScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildArrowLeftInformationImage(context),
                      SizedBox(height: 36.v),
                      _buildNameStack(context),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("Email",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h, right: 21.h),
                          child: CustomTextFormField(
                              controller: emailController,
                              hintText: "kidhok@123@gmail.com",
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 9.v))),
                      SizedBox(height: 52.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSignOut(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 115.h),
                              child: Text("Sign out",
                                  style: CustomTextStyles
                                      .headlineLargeIndigoA700))),
                      SizedBox(height: 37.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgFastRemovebgPreview,
                          height: 191.v,
                          width: 300.h,
                          alignment: Alignment.center),
                      SizedBox(height: 6.v)
                    ])),
            bottomNavigationBar:
                _buildRewindFavoriteFloatingActionButtonAddShoppingCartPerson(
                    context),
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
  Widget _buildArrowLeftInformationImage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 36.v, bottom: 92.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 28.v, bottom: 80.v),
                  child: Text("Information",
                      style: theme.textTheme.headlineLarge)),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse3,
                  height: 148.v,
                  width: 142.h,
                  radius: BorderRadius.circular(74.h))
            ]));
  }

  /// Section Widget
  Widget _buildNameStack(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Name", style: theme.textTheme.headlineLarge),
          SizedBox(height: 16.v),
          SizedBox(
              height: 43.v,
              width: 341.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 50.h),
                        child: Text("Name",
                            style: theme.textTheme.headlineLarge))),
                CustomTextFormField(
                    width: 341.h,
                    controller: nameController,
                    hintText: "Kishok kumar",
                    alignment: Alignment.center,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 30.h, vertical: 9.v))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildRewindFavoriteFloatingActionButtonAddShoppingCartPerson(
      BuildContext context) {
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
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the iphone1415ProFourScreen when the action is triggered.
  onTapTxtSignOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProFourScreen);
  }
}
