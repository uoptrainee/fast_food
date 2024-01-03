import 'package:fast_food/core/app_export.dart';
import 'package:fast_food/widgets/custom_elevated_button.dart';
import 'package:fast_food/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProFiveScreen extends StatelessWidget {
  Iphone1415ProFiveScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      appTheme.indigo30001,
                      theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      appTheme.indigo600Ce
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildWelcomeSection(context),
                          SizedBox(height: 14.v),
                          _buildEmailSection(context),
                          SizedBox(height: 5.v),
                          _buildPasswordSection(context),
                          SizedBox(height: 14.v),
                          _buildConfirmSection(context),
                          SizedBox(height: 14.v),
                          _buildProfileSection(context),
                          SizedBox(height: 68.v),
                          CustomElevatedButton(
                              width: 244.h,
                              text: "Sign up",
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientBlueGrayToPrimaryDecoration,
                              onPressed: () {
                                onTapSignUp(context);
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name:",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 5.v),
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: CustomTextFormField(controller: nameController))
                ])));
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return SizedBox(
        height: 281.v,
        width: 365.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPiRemovebgPreview250x352,
              height: 250.v,
              width: 352.h,
              alignment: Alignment.topLeft),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h, top: 100.v),
                  child: Text("Hi New!!",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayMedium))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 13.h, bottom: 87.v),
                  child: Text("Welcome !!",
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineLargeIndigo100))),
          _buildUserProfileSection(context)
        ]));
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 28.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Text("Eamil:",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall)),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: CustomTextFormField(
                  controller: editTextController,
                  alignment: Alignment.centerRight))
        ]));
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 28.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("Password",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall)),
          SizedBox(height: 11.v),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: CustomTextFormField(
                  controller: editTextController1,
                  alignment: Alignment.centerRight))
        ]));
  }

  /// Section Widget
  Widget _buildConfirmSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 28.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text("Confirm",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall)),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: CustomTextFormField(
                  controller: editTextController2,
                  alignment: Alignment.centerRight))
        ]));
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 28.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text("Profile:",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall)),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: CustomTextFormField(
                  controller: editTextController3,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.centerRight))
        ]));
  }

  /// Navigates to the iphone1415ProFourScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProFourScreen);
  }
}
