class ExpensesModel {
  int? id;
  String? createdAt;
  String? title;
  String? amount;
  String? date;

  ExpensesModel({this.id, this.createdAt, this.title, this.amount, this.date});

  ExpensesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    createdAt = json['created_at'] as String;
    title = json['title'] as String;
    amount = json['amount'] as String;
    date = json['date'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.amount != null) {
      data['amount'] = this.amount;
    }
    if (this.date != null) {
      data['date'] = this.date;
    }
    return data;
  }
}
