import '../models/category.dart';

abstract class CategoryRepository {
  Future<List<Category>> getCategories();

  Future<void> add(Category category);

  Future<void> delete(String categoryId);
}

class CategoryRepositoryImpl extends CategoryRepository {
  @override
  Future<List<Category>> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Future<void> add(Category category) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String categoryId) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
