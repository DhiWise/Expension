import 'package:flutter/material.dart';
import 'package:flutterexpension/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get groupstylecornerradius => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        ),
      );
  static BoxDecoration get groupstylegray100cornerradius => BoxDecoration(
        color: ColorConstant.gray100,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        ),
      );
  static BoxDecoration get groupstylewhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get groupstylewhite1 => BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            60.00,
          ),
        ),
      );
  static BoxDecoration get groupstylewhiteA700cornerradius => BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              22,
            ),
          ),
        ],
      );
  static BoxDecoration get groupstylewhite3 => BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              30.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              30.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              24.483871459960938,
            ),
          ),
        ],
      );
  static BoxDecoration get groupstylewhite2 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              -2,
            ),
          ),
        ],
      );
  static BoxDecoration get textstyleintermedium142 => BoxDecoration(
        color: ColorConstant.redA20019,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            12.50,
          ),
        ),
      );
  static BoxDecoration get groupstyletealA700cornerradius => BoxDecoration(
        color: ColorConstant.tealA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            15.12,
          ),
        ),
      );
  static BoxDecoration get textstyleintersemibold8 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        ),
      );
  static BoxDecoration get groupstyle => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            -0.0954106324544648,
            -0.032924101927352664,
          ),
          end: Alignment(
            1.060386454067854,
            1.0223214263447118,
          ),
          colors: [
            ColorConstant.teal300,
            ColorConstant.bluegray500,
          ],
        ),
      );
}
