enum TransactionType { income, expense }

class Transaction {
  Transaction({
    required this.id,
    required this.amount,
    this.description = "",
    required this.date,
    required this.type,
  });

  final String id;
  final int amount;
  final String description;
  final String date;
  final TransactionType type;
}
