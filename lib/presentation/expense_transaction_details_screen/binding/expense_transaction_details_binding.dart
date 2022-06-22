import '../controller/expense_transaction_details_controller.dart';
import 'package:get/get.dart';

class ExpenseTransactionDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExpenseTransactionDetailsController());
  }
}
