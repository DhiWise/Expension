import '/core/app_export.dart';
import 'package:flutterexpension/presentation/add_expense_screen/models/add_expense_model.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:flutterexpension/core/utils/progress_dialog_utils.dart';
import 'package:flutterexpension/supabase/models/expenses_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddExpenseController extends GetxController with StateMixin<dynamic> {
  TextEditingController group49Controller = TextEditingController();

  TextEditingController tfController = TextEditingController();

  TextEditingController group51Controller = TextEditingController();

  Rx<AddExpenseModel> addExpenseModelObj = AddExpenseModel().obs;

  var expensesModel = <ExpensesModel>[];

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group49Controller.dispose();
    tfController.dispose();
    group51Controller.dispose();
  }

  Future<void> createExpensesDocument({dynamic reqParams}) async {
    try {
      ProgressDialogUtils.showProgressDialog();
      var response = await Get.find<SupabaseClient>()
          .from('expenses')
          .insert(reqParams)
          .execute();
      ProgressDialogUtils.hideProgressDialog();
      if (response.status == 201) {
        onCreateExpensesDocumentSuccess(response.data);
      } else {
        onCreateExpensesDocumentError(
            response.error?.message ?? 'something went wrong !!');
      }
    } catch (err) {
      ProgressDialogUtils.hideProgressDialog();
      onCreateExpensesDocumentError(err.toString());
    }
  }

  void onCreateExpensesDocumentSuccess(dynamic response) {
    if (response != null) {
      expensesModel =
          (response as List).map((e) => ExpensesModel.fromJson(e)).toList();
    }
    Get.snackbar('', "Karan Joshi has worked hard to submit the data.");
  }

  void onCreateExpensesDocumentError(dynamic err) {
    if (err is String) {
      Get.rawSnackbar(message: err);
    }
    Fluttertoast.showToast(
      msg: "Keval Makadiya, This feature is not working!",
    );
  }
}
