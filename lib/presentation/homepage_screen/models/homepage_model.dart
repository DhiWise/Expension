import 'package:get/get.dart';
import 'homepage_item_model.dart';

class HomepageModel {
  Rx<String> enjelinMorgeanTxt = Rx('Lorem ipsum dolor sit amet');

  RxList<HomepageItemModel> homepageItemList =
      RxList.filled(4, HomepageItemModel());
}
