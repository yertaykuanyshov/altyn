import 'package:altyn/models/category.dart';
import 'package:altyn/models/transaction.dart';

abstract class TransactionRepository {
  Future<List<Transaction>> getAll();

  Future<List<Transaction>> filter(Category category);
}

class TransactionRepositoryImpl extends TransactionRepository {
  @override
  Future<List<Transaction>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<List<Transaction>> filter(Category category) {
    // TODO: implement filter
    throw UnimplementedError();
  }
}
