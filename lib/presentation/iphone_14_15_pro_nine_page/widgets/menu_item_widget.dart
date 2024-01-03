import 'package:fast_food/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 162.h,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 198.v,
          width: 162.h,
          margin: EdgeInsets.only(bottom: 3.v),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(left: 4.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.fillBluegray10001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 10.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          margin: EdgeInsets.only(right: 5.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFavorite,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgFavorite,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 91.v),
                      Text(
                        "Beef Burger",
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        "10",
                        style: CustomTextStyles.titleSmallLime900,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBaRemovebgPreview,
                height: 140.adaptSize,
                width: 140.adaptSize,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 5.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAdd,
                height: 55.v,
                width: 30.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(right: 18.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
