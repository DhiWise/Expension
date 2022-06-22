import '/core/app_export.dart';
import 'package:flutterexpension/presentation/homepage_screen/models/homepage_model.dart';
import 'package:supabase/supabase.dart';
import 'package:flutterexpension/core/utils/progress_dialog_utils.dart';
import 'package:flutterexpension/supabase/models/name_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomepageController extends GetxController with StateMixin<dynamic> {
  Rx<HomepageModel> homepageModelObj = HomepageModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(id: 1, title: "test", isSelected: true),
    SelectionPopupModel(id: 2, title: "test1"),
    SelectionPopupModel(id: 3, title: "test2")
  ].obs;

  var nameModel = NameModel();

  @override
  void onReady() async {
    super.onReady();
    fetchNameCollection();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    dropdownItemList.refresh();
  }

  Future<void> fetchNameCollection() async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('Name')
          .select()
          .single()
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 200) {
        onFetchNameCollectionSuccess(response.data);
      } else {
        onFetchNameCollectionError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onFetchNameCollectionError(err.toString());
    }
  }

  void onFetchNameCollectionSuccess(dynamic response) {
    if (response != null) {
      nameModel = NameModel.fromJson(response);
      if (nameModel != null) {
        homepageModelObj.value.enjelinMorgeanTxt.value =
            nameModel.name!.toString();
      }
    }
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Success",
        middleText: "Data Fetched! Thank you Vishal Virani!");
  }

  void onFetchNameCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
    Fluttertoast.showToast(
      msg: "Supabase is down. Where is Rahul Patel?",
    );
  }
}
