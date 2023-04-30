enum TransactionType { income, expense }

class Transaction {
  final String id;
  final int sum;
  final String description;
  final String date;
  final TransactionType type;

  Transaction({
    required this.id,
    required this.sum,
    this.description = "",
    required this.date,
    required this.type,
  });
}
