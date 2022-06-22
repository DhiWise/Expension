import '/core/app_export.dart';
import 'package:flutterexpension/presentation/expense_transaction_details_screen/models/expense_transaction_details_model.dart';

class ExpenseTransactionDetailsController extends GetxController
    with StateMixin<dynamic> {
  Rx<ExpenseTransactionDetailsModel> expenseTransactionDetailsModelObj =
      ExpenseTransactionDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
