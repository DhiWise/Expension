import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterexpension/core/app_export.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(),
                              decoration:
                                  BoxDecoration(color: ColorConstant.whiteA700),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: getVerticalSize(20.00)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(297.00),
                                                  width: size.width,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        253.00),
                                                                width:
                                                                    size.width,
                                                                margin: EdgeInsets.only(
                                                                    bottom: getVerticalSize(
                                                                        10.00)),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child: Image.asset(
                                                                              ImageConstant.imgRectangle92,
                                                                              height: getVerticalSize(253.00),
                                                                              width: getHorizontalSize(414.00),
                                                                              fit: BoxFit.fill)),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                          child: Container(
                                                                              width: size.width,
                                                                              margin: EdgeInsets.only(left: getHorizontalSize(24.00), top: getVerticalSize(44.00), right: getHorizontalSize(24.00), bottom: getVerticalSize(44.00)),
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                GestureDetector(
                                                                                    onTap: () {
                                                                                      onTapImgIcon();
                                                                                    },
                                                                                    child: Padding(padding: EdgeInsets.only(top: getVerticalSize(10.00), bottom: getVerticalSize(16.00)), child: Container(height: getVerticalSize(14.00), width: getHorizontalSize(8.40), child: SvgPicture.asset(ImageConstant.imgIcon5, fit: BoxFit.fill)))),
                                                                                Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                  Padding(padding: EdgeInsets.only(top: getVerticalSize(6.00), bottom: getVerticalSize(13.00)), child: Text("lbl_profile".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstyleintersemibold183.copyWith(fontSize: getFontSize(18)))),
                                                                                  Padding(padding: EdgeInsets.only(left: getHorizontalSize(115.50)), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(6.67)), child: Container(height: getSize(40.00), width: getSize(40.00), child: SvgPicture.asset(ImageConstant.imgFrame41, fit: BoxFit.fill))))
                                                                                ])
                                                                              ])))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    right: getHorizontalSize(
                                                                        10.00),
                                                                    bottom: getVerticalSize(
                                                                        10.00)),
                                                                child: Image.asset(
                                                                    ImageConstant
                                                                        .imgGroup61,
                                                                    height: getVerticalSize(
                                                                        163.00),
                                                                    width: getHorizontalSize(
                                                                        212.00),
                                                                    fit: BoxFit
                                                                        .fill))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                margin: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        147.00),
                                                                    top: getVerticalSize(
                                                                        10.00),
                                                                    right: getHorizontalSize(
                                                                        147.00)),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            60.00))),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(top: getVerticalSize(12.00)),
                                                                              child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(60.00)), child: Image.asset(ImageConstant.imgWoman1, height: getVerticalSize(108.00), width: getHorizontalSize(120.00), fit: BoxFit.fill))))
                                                                    ])))
                                                      ])),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              25.00),
                                                          top: getVerticalSize(
                                                              20.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  25.00)),
                                                      child: Obx(() => Text(
                                                          controller
                                                              .profileModelObj
                                                              .value
                                                              .enjelinMorgeanTxt
                                                              .value,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstyleintersemibold201
                                                              .copyWith(
                                                                  fontSize: getFontSize(20)))))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: getHorizontalSize(
                                                              25.00),
                                                          top: getVerticalSize(
                                                              5.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  25.00)),
                                                      child: Obx(() => Text(
                                                          controller
                                                              .profileModelObj
                                                              .value
                                                              .enjelinmorgeaTxt
                                                              .value,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstyleintersemibold14
                                                              .copyWith(
                                                                  fontSize: getFontSize(14)))))),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          34.00)),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getSize(50.00),
                                                            width:
                                                                getSize(50.00),
                                                            margin: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        25.00)),
                                                            child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                    EdgeInsets
                                                                        .all(0),
                                                                color:
                                                                    ColorConstant
                                                                        .gray100,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            25.00))),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .bottomCenter,
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(left: getHorizontalSize(7.25), top: getVerticalSize(10.00), right: getHorizontalSize(7.17), bottom: getVerticalSize(8.77)),
                                                                              child: Image.asset(ImageConstant.imgForm, height: getVerticalSize(30.23), width: getHorizontalSize(35.58), fit: BoxFit.fill))),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Container(
                                                                              height: getVerticalSize(30.23),
                                                                              width: getHorizontalSize(35.58),
                                                                              margin: EdgeInsets.only(left: getHorizontalSize(7.25), top: getVerticalSize(10.00), right: getHorizontalSize(7.17), bottom: getVerticalSize(8.77)),
                                                                              child: Card(
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  elevation: 0,
                                                                                  margin: EdgeInsets.all(0),
                                                                                  color: ColorConstant.tealA700,
                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(15.12))),
                                                                                  child: Stack(children: [
                                                                                    Align(alignment: Alignment.centerLeft, child: Image.asset(ImageConstant.imgGlossy, height: getVerticalSize(30.23), width: getHorizontalSize(35.58), fit: BoxFit.fill))
                                                                                  ]))))
                                                                    ]))),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                left: getHorizontalSize(
                                                                    20.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        16.00),
                                                                right:
                                                                    getHorizontalSize(
                                                                        215.00),
                                                                bottom: getVerticalSize(
                                                                    15.00)),
                                                            child: Text(
                                                                "lbl_invite_friends"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .textstyleintermedium161
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(16))))
                                                      ])),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(364.00),
                                                  margin: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                          25.00),
                                                      top: getVerticalSize(
                                                          15.00),
                                                      right: getHorizontalSize(
                                                          25.00)),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .gray200)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                          17.80)),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          37.69)),
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          23.45),
                                                                      width: getHorizontalSize(
                                                                          24.61),
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgVector2,
                                                                          fit: BoxFit
                                                                              .fill))),
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          32.70),
                                                                      top: getVerticalSize(
                                                                          2.20),
                                                                      right: getHorizontalSize(
                                                                          222.00),
                                                                      bottom: getVerticalSize(
                                                                          2.25)),
                                                                  child: Text(
                                                                      "lbl_account_info"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .textstyleintermedium161
                                                                          .copyWith(
                                                                              fontSize: getFontSize(16))))
                                                            ]),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        33.75)),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              35.00)),
                                                                      child: Container(
                                                                          height: getSize(
                                                                              30.00),
                                                                          width: getSize(
                                                                              30.00),
                                                                          child: SvgPicture.asset(
                                                                              ImageConstant.imgUsersfill1,
                                                                              fit: BoxFit.fill))),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              30.00),
                                                                          top: getVerticalSize(
                                                                              5.00),
                                                                          right: getHorizontalSize(
                                                                              199.00),
                                                                          bottom: getVerticalSize(
                                                                              6.00)),
                                                                      child: Text(
                                                                          "msg_personal_profil"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .textstyleintermedium161
                                                                              .copyWith(fontSize: getFontSize(16))))
                                                                ])),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        35.00)),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              37.81),
                                                                          top: getVerticalSize(
                                                                              0.62)),
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              18.75),
                                                                          width: getHorizontalSize(
                                                                              24.38),
                                                                          child: SvgPicture.asset(
                                                                              ImageConstant.imgVector3,
                                                                              fit: BoxFit.fill))),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              32.81),
                                                                          right: getHorizontalSize(
                                                                              196.00),
                                                                          bottom: getVerticalSize(
                                                                              0.37)),
                                                                      child: Text(
                                                                          "lbl_message_center"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .textstyleintermedium161
                                                                              .copyWith(fontSize: getFontSize(16))))
                                                                ])),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        40.32)),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              38.75)),
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              23.39),
                                                                          width: getHorizontalSize(
                                                                              22.50),
                                                                          child: SvgPicture.asset(
                                                                              ImageConstant.imgVector4,
                                                                              fit: BoxFit.fill))),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              33.75),
                                                                          top: getVerticalSize(
                                                                              1.31),
                                                                          right: getHorizontalSize(
                                                                              178.00),
                                                                          bottom: getVerticalSize(
                                                                              3.08)),
                                                                      child: Text(
                                                                          "msg_login_and_secur"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .textstyleintermedium161
                                                                              .copyWith(fontSize: getFontSize(16))))
                                                                ])),
                                                        Padding(
                                                            padding: EdgeInsets.only(
                                                                top:
                                                                    getVerticalSize(
                                                                        31.92)),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              35.00)),
                                                                      child: Container(
                                                                          height: getSize(
                                                                              30.00),
                                                                          width: getSize(
                                                                              30.00),
                                                                          child: SvgPicture.asset(
                                                                              ImageConstant.imgLockkeyfill1,
                                                                              fit: BoxFit.fill))),
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              30.00),
                                                                          top: getVerticalSize(
                                                                              6.00),
                                                                          right: getHorizontalSize(
                                                                              190.00),
                                                                          bottom: getVerticalSize(
                                                                              5.00)),
                                                                      child: Text(
                                                                          "msg_data_and_privac"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .textstyleintermedium161
                                                                              .copyWith(fontSize: getFontSize(16))))
                                                                ]))
                                                      ]))
                                            ]))
                                  ]))))),
              Container(
                  margin: EdgeInsets.only(left: getHorizontalSize(1.00)),
                  decoration:
                      BoxDecoration(color: ColorConstant.whiteA700, boxShadow: [
                    BoxShadow(
                        color: ColorConstant.black9000f,
                        spreadRadius: getHorizontalSize(2.00),
                        blurRadius: getHorizontalSize(2.00),
                        offset: Offset(0, -2))
                  ]),
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: getVerticalSize(22.00),
                          bottom: getVerticalSize(22.00)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapImgVector();
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(3.50),
                                        bottom: getVerticalSize(3.00)),
                                    child: Container(
                                        height: getVerticalSize(29.50),
                                        width: getHorizontalSize(28.96),
                                        child: SvgPicture.asset(
                                            ImageConstant.imgVector5,
                                            fit: BoxFit.fill)))),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: getVerticalSize(3.12),
                                    bottom: getVerticalSize(3.13)),
                                child: Container(
                                    height: getSize(29.75),
                                    width: getSize(29.75),
                                    child: SvgPicture.asset(
                                        ImageConstant.imgVector6,
                                        fit: BoxFit.fill))),
                            GestureDetector(
                                onTap: () {
                                  onTapImgWallet1();
                                },
                                child: Container(
                                    height: getVerticalSize(36.00),
                                    width: getHorizontalSize(34.75),
                                    child: SvgPicture.asset(
                                        ImageConstant.imgWallet11,
                                        fit: BoxFit.fill))),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: getVerticalSize(3.36),
                                    bottom: getVerticalSize(4.50)),
                                child: Image.asset(ImageConstant.imgVector7,
                                    height: getVerticalSize(28.14),
                                    width: getHorizontalSize(29.54),
                                    fit: BoxFit.fill))
                          ])))
            ])));
  }

  onTapImgIcon() {
    Get.back();
  }

  onTapImgVector() {
    Get.toNamed(AppRoutes.homepageScreen);
  }

  onTapImgWallet1() {
    Get.toNamed(AppRoutes.expenseTransactionDetailsScreen);
  }
}
