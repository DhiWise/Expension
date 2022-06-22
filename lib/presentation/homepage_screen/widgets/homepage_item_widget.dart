import '../controller/homepage_controller.dart';
import '../models/homepage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutterexpension/core/app_export.dart';

// ignore: must_be_immutable
class HomepageItemWidget extends StatelessWidget {
  HomepageItemWidget(this.homepageItemModelObj);

  HomepageItemModel homepageItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          8.00,
        ),
        bottom: getVerticalSize(
          8.00,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                constraints: BoxConstraints(
                  minHeight: getSize(
                    50.00,
                  ),
                  minWidth: getSize(
                    50.00,
                  ),
                ),
                padding: EdgeInsets.all(0),
                icon: Container(
                  width: getSize(
                    50.00,
                  ),
                  height: getSize(
                    50.00,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.gray100,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        8.00,
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      8.00,
                    ),
                    top: getVerticalSize(
                      8.00,
                    ),
                    right: getHorizontalSize(
                      8.00,
                    ),
                    bottom: getVerticalSize(
                      8.00,
                    ),
                  ),
                  child: Image.asset(
                    ImageConstant.imgFrame9,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    9.00,
                  ),
                  top: getVerticalSize(
                    4.50,
                  ),
                  bottom: getVerticalSize(
                    4.50,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_upwork".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.textstyleintermedium161.copyWith(
                        fontSize: getFontSize(
                          16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          6.00,
                        ),
                        right: getHorizontalSize(
                          10.00,
                        ),
                      ),
                      child: Text(
                        "lbl_today".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.textstyleinterregular13.copyWith(
                          fontSize: getFontSize(
                            13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                163.00,
              ),
              top: getVerticalSize(
                14.00,
              ),
              bottom: getVerticalSize(
                14.00,
              ),
            ),
            child: Text(
              "lbl_850_00".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: AppStyle.textstyleintersemibold181.copyWith(
                fontSize: getFontSize(
                  18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
