import '/core/app_export.dart';
import 'package:flutterexpension/presentation/profile_screen/models/profile_model.dart';
import 'package:supabase/supabase.dart';
import 'package:flutterexpension/core/utils/progress_dialog_utils.dart';
import 'package:flutterexpension/supabase/models/name_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfileController extends GetxController with StateMixin<dynamic> {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

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
        profileModelObj.value.enjelinMorgeanTxt.value =
            nameModel.name!.toString();
        profileModelObj.value.enjelinmorgeaTxt.value =
            nameModel.email!.toString();
      }
    }
    Fluttertoast.showToast(
      msg: "Working!",
    );
  }

  void onFetchNameCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
    Get.snackbar('', "Not Working yarrr");
  }
}
