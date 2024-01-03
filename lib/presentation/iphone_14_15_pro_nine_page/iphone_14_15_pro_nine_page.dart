import '../iphone_14_15_pro_nine_page/widgets/fiftysix_item_widget.dart';
import '../iphone_14_15_pro_nine_page/widgets/menu_item_widget.dart';
import 'package:fast_food/core/app_export.dart';
import 'package:fast_food/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProNinePage extends StatelessWidget {
  Iphone1415ProNinePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillIndigo,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 34.v),
              _buildEightyTwo(context),
              SizedBox(height: 8.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  right: 33.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "search",
                ),
              ),
              SizedBox(height: 27.v),
              _buildAllText(context),
              SizedBox(height: 27.v),
              _buildIPhone1415Pro(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 30.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 22.v,
            ),
            child: Text(
              "Menu",
              style: CustomTextStyles.headlineLargeBlue600,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: 72.adaptSize,
            width: 72.adaptSize,
            radius: BorderRadius.circular(
              36.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinety(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "Promotion",
                style: CustomTextStyles.headlineLargeBlue600,
              ),
            ),
            SizedBox(height: 13.v),
            SizedBox(
              height: 138.v,
              width: 332.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 21.v,
                      ),
                      decoration: AppDecoration.fillIndigo300.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 74.v),
                          Text(
                            "Today offer",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        bottom: 35.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Free Box of Fries",
                            style: CustomTextStyles
                                .headlineSmallOnPrimaryContainer,
                          ),
                          SizedBox(height: 6.v),
                          Text(
                            "On all orders above 150",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAllText(BuildContext context) {
    return Container(
      height: 317.v,
      width: 377.h,
      margin: EdgeInsets.only(left: 16.h),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 317.v,
              child: ListView.separated(
                padding: EdgeInsets.only(bottom: 33.v),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 19.h,
                  );
                },
                itemCount: 5,
                itemBuilder: (context, index) {
                  return FiftysixItemWidget();
                },
              ),
            ),
          ),
          _buildNinety(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIPhone1415Pro(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 235.v,
        width: 371.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Text(
                  "Popular",
                  style: CustomTextStyles.headlineLargeBlue600,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 235.v,
                child: ListView.separated(
                  padding: EdgeInsets.only(top: 34.v),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 47.h,
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return MenuItemWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
