import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutterexpension/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment(
                                    -0.0954106324544648, -0.032924101927352664),
                                end: Alignment(
                                    1.060386454067854, 1.0223214263447118),
                                colors: [
                              ColorConstant.teal300,
                              ColorConstant.bluegray500
                            ])),
                        child: Container(
                            height: size.height,
                            width: size.width,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment(-0.0954106324544648,
                                        -0.032924101927352664),
                                    end: Alignment(
                                        1.060386454067854, 1.0223214263447118),
                                    colors: [
                                  ColorConstant.teal300,
                                  ColorConstant.bluegray500
                                ])),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: getVerticalSize(2.61),
                                          bottom: getVerticalSize(3.39)),
                                      child: Image.asset(
                                          ImageConstant.imgRectangle,
                                          height: getVerticalSize(890.00),
                                          width: getHorizontalSize(414.00),
                                          fit: BoxFit.fill))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(40.00),
                                          top: getVerticalSize(40.00),
                                          right: getHorizontalSize(40.00),
                                          bottom: getVerticalSize(40.00)),
                                      child: Text("lbl_mono".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle.textstyleinterbold50
                                              .copyWith(
                                                  fontSize: getFontSize(50)))))
                            ])))))));
  }
}
