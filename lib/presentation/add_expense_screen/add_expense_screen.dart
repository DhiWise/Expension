import 'controller/add_expense_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterexpension/core/app_export.dart';
import 'package:flutterexpension/supabase/models/expenses_model.dart';

class AddExpenseScreen extends GetWidget<AddExpenseController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(882.00),
                        width: size.width,
                        margin: EdgeInsets.only(),
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Stack(alignment: Alignment.topLeft, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  height: getVerticalSize(253.00),
                                  width: size.width,
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(20.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Image.asset(
                                                ImageConstant.imgRectangle91,
                                                height: getVerticalSize(253.00),
                                                width:
                                                    getHorizontalSize(414.00),
                                                fit: BoxFit.fill)),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        28.00),
                                                    top: getVerticalSize(58.00),
                                                    right: getHorizontalSize(
                                                        28.00),
                                                    bottom:
                                                        getVerticalSize(58.00)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(6.00),
                                                    width: getHorizontalSize(
                                                        26.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgGroup19,
                                                        fit: BoxFit.fill))))
                                      ]))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  height: getVerticalSize(163.00),
                                  width: getHorizontalSize(212.00),
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(20.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Image.asset(
                                                ImageConstant.imgGroup6,
                                                height: getVerticalSize(163.00),
                                                width:
                                                    getHorizontalSize(212.00),
                                                fit: BoxFit.fill)),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapImgIcon();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            33.80),
                                                        top: getVerticalSize(
                                                            54.00),
                                                        right:
                                                            getHorizontalSize(
                                                                33.80),
                                                        bottom: getVerticalSize(
                                                            54.00)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            14.00),
                                                        width:
                                                            getHorizontalSize(
                                                                8.40),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgIcon1,
                                                            fit:
                                                                BoxFit.fill)))))
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(151.00),
                                      top: getVerticalSize(70.00),
                                      right: getHorizontalSize(151.00),
                                      bottom: getVerticalSize(70.00)),
                                  child: Text("lbl_add_expense".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.textstyleintersemibold183
                                          .copyWith(
                                              fontSize: getFontSize(18))))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(28.00),
                                      top: getVerticalSize(151.00),
                                      right: getHorizontalSize(28.00),
                                      bottom: getVerticalSize(151.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(20.00)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorConstant.black90014,
                                            spreadRadius:
                                                getHorizontalSize(2.00),
                                            blurRadius: getHorizontalSize(2.00),
                                            offset: Offset(0, 22))
                                      ]),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(20.00),
                                                top: getVerticalSize(30.00),
                                                right:
                                                    getHorizontalSize(20.00)),
                                            child: Text("lbl_name".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstyleintermedium12
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(12),
                                                        letterSpacing: 0.72))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(20.00),
                                                top: getVerticalSize(10.00),
                                                right:
                                                    getHorizontalSize(20.00)),
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(318.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .group49Controller,
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "lbl_title".tr,
                                                        prefixIcon: Container(
                                                            child: Image.asset(
                                                                ImageConstant
                                                                    .imgImage15,
                                                                height: getSize(
                                                                    32.00),
                                                                width: getSize(
                                                                    32.00),
                                                                fit: BoxFit.fill)),
                                                        prefixIconConstraints: BoxConstraints(minWidth: getSize(32.00), minHeight: getSize(32.00)),
                                                        suffixIcon: Container(child: Container(height: getSize(6.00), width: getSize(10.00), child: SvgPicture.asset(ImageConstant.imgIcon2, fit: BoxFit.fill))),
                                                        suffixIconConstraints: BoxConstraints(minWidth: getSize(6.00), minHeight: getSize(6.00)),
                                                        isDense: true)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(20.00),
                                                top: getVerticalSize(24.00),
                                                right:
                                                    getHorizontalSize(20.00)),
                                            child: Text("lbl_amount".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstyleintermedium12
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(12),
                                                        letterSpacing: 0.72))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(20.00),
                                                top: getVerticalSize(16.00),
                                                right: getHorizontalSize(20.00),
                                                bottom: getVerticalSize(16.00)),
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(318.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller:
                                                        controller.tfController,
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "lbl_amount2".tr,
                                                        isDense: true),
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .bluegray500,
                                                        fontSize:
                                                            getFontSize(14.0),
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w400)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(20.00),
                                                top: getVerticalSize(24.00),
                                                right:
                                                    getHorizontalSize(20.00)),
                                            child: Text("lbl_date".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstyleintermedium12
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(12),
                                                        letterSpacing: 0.72))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(20.00),
                                                top: getVerticalSize(10.00),
                                                right:
                                                    getHorizontalSize(20.00)),
                                            child: Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(318.00),
                                                child: TextFormField(
                                                    focusNode: FocusNode(),
                                                    controller: controller
                                                        .group51Controller,
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "lbl_date2".tr,
                                                        suffixIcon: Container(
                                                            child: Container(
                                                                height: getSize(
                                                                    16.00),
                                                                width: getSize(
                                                                    16.00),
                                                                child: SvgPicture.asset(
                                                                    ImageConstant.imgIcon3,
                                                                    fit: BoxFit.fill))),
                                                        suffixIconConstraints: BoxConstraints(minWidth: getSize(16.00), minHeight: getSize(16.00)),
                                                        isDense: true)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(20.00),
                                                top: getVerticalSize(24.00),
                                                right:
                                                    getHorizontalSize(20.00)),
                                            child: Text("lbl_invoice".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstyleintermedium12
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(12),
                                                        letterSpacing: 0.72))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapGroup5();
                                                },
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            20.00),
                                                        top: getVerticalSize(
                                                            10.00),
                                                        right: getHorizontalSize(
                                                            20.00),
                                                        bottom: getVerticalSize(
                                                            98.00)),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    8.00))),
                                                    child: DottedBorder(
                                                        color: ColorConstant
                                                            .gray300,
                                                        padding: EdgeInsets.only(
                                                            left: getHorizontalSize(
                                                                1.00),
                                                            top: getVerticalSize(
                                                                1.00),
                                                            right: getHorizontalSize(1.00),
                                                            bottom: getVerticalSize(1.00)),
                                                        strokeWidth: getHorizontalSize(1.00),
                                                        radius: Radius.circular(8),
                                                        borderType: BorderType.RRect,
                                                        dashPattern: [5, 5],
                                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      15.40),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          15.40)),
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          19.20),
                                                                  width: getSize(
                                                                      19.20),
                                                                  child: SvgPicture.asset(
                                                                      ImageConstant
                                                                          .imgIcon4,
                                                                      fit: BoxFit
                                                                          .fill))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          14.40),
                                                                  top: getVerticalSize(
                                                                      17.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          16.00)),
                                                              child: Text(
                                                                  "lbl_add_invoice"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstyleintermedium141
                                                                      .copyWith(
                                                                          fontSize: getFontSize(
                                                                              14),
                                                                          letterSpacing:
                                                                              0.84)))
                                                        ])))))
                                      ])))
                        ]))))));
  }

  onTapImgIcon() {
    Get.back();
  }

  onTapGroup5() async {
    var expensesModelReq = ExpensesModel(
      title: controller.group49Controller.text.toString(),
      amount: controller.tfController.text.toString(),
      date: controller.group51Controller.text.toString(),
    );
    controller.createExpensesDocument(
      reqParams: expensesModelReq.toJson(),
    );
  }
}
