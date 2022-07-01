import '/core/app_export.dart';
import 'package:flutterexpension/presentation/expense_transaction_details_screen/models/expense_transaction_details_model.dart';
import 'package:supabase/supabase.dart';
import 'package:flutterexpension/core/utils/progress_dialog_utils.dart';
import 'package:flutterexpension/supabase/models/expenses_model.dart';

class ExpenseTransactionDetailsController extends GetxController
    with StateMixin<dynamic> {
  Rx<ExpenseTransactionDetailsModel> expenseTransactionDetailsModelObj =
      ExpenseTransactionDetailsModel().obs;

  var expensesModel = <ExpensesModel>[];

  @override
  void onReady() async {
    super.onReady();
    fetchExpensesCollection();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchExpensesCollection() async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('expenses')
          .select()
          .order('created_at', ascending: false)
          .limit(1)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 200) {
        onFetchExpensesCollectionSuccess(response.data);
      } else {
        onFetchExpensesCollectionError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onFetchExpensesCollectionError(err.toString());
    }
  }

  void onFetchExpensesCollectionSuccess(dynamic response) {
    if (response != null) {
      expensesModel =
          (response as List).map((e) => ExpensesModel.fromJson(e)).toList();
      if (expensesModel != null) {
        expenseTransactionDetailsModelObj.value.claireJovalskiTxt.value =
            '';
        expenseTransactionDetailsModelObj.value.k8500Txt.value =
            '';
        expenseTransactionDetailsModelObj.value.feb292022Txt.value =
            '';
      }
    }
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "WOW", middleText: "Fetched");
  }

  void onFetchExpensesCollectionError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
    Get.snackbar('', "Not working, Rahul!");
  }
}
