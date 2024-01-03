import 'package:fast_food/core/app_export.dart';
import 'package:fast_food/widgets/custom_elevated_button.dart';
import 'package:fast_food/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProFourScreen extends StatelessWidget {
  Iphone1415ProFourScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child: Column(children: [
                          _buildEmailStack(context),
                          SizedBox(height: 18.v),
                          _buildPasswordColumn(context),
                          SizedBox(height: 27.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtCreateAnAccount(context);
                              },
                              child: Text("Create An Account ",
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineSmall)),
                          SizedBox(height: 23.v),
                          CustomElevatedButton(
                              width: 244.h,
                              text: "Sign in",
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientBlueGrayToPrimaryDecoration,
                              onPressed: () {
                                onTapSignIn(context);
                              }),
                          SizedBox(height: 5.v)
                        ]))))));
  }

  /// Section Widget
  Widget _buildEmailForm(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email:",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 14.v),
                  CustomTextFormField(
                      controller: emailController,
                      hintText: "Enter your Email",
                      hintStyle: CustomTextStyles.titleLargeIndigo200b5,
                      textInputType: TextInputType.emailAddress,
                      borderDecoration:
                          TextFormFieldStyleHelper.fillSecondaryContainer)
                ])));
  }

  /// Section Widget
  Widget _buildEmailStack(BuildContext context) {
    return SizedBox(
        height: 398.v,
        width: 378.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgPiRemovebgPreview,
              height: 321.v,
              width: 288.h,
              alignment: Alignment.topRight),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 98.v),
                  child: Text("Lets sign in you",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayMedium))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h, bottom: 162.v),
                  child: Text("You ‘ve been missed!",
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineLargeIndigo100))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h, top: 156.v),
                  child: Text("Welcome back!",
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineLargeIndigo100))),
          _buildEmailForm(context)
        ]));
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Password",
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: CustomTextFormField(
                  controller: passwordController,
                  hintText: "Enter Password",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillSecondaryContainer))
        ]));
  }

  /// Navigates to the iphone1415ProFiveScreen when the action is triggered.
  onTapTxtCreateAnAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProFiveScreen);
  }

  /// Navigates to the iphone1415ProNineContainerScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProNineContainerScreen);
  }
}
