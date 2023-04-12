import '../database.dart';

class CategoriesTable extends SupabaseTable<CategoriesRow> {
  @override
  String get tableName => 'categories';

  @override
  CategoriesRow createRow(Map<String, dynamic> data) => CategoriesRow(data);
}

class CategoriesRow extends SupabaseDataRow {
  CategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriesTable();

  String? get category => getField<String>('Category');
  set category(String? value) => setField<String>('Category', value);

  int get id => getField<int>('ID')!;
  set id(int value) => setField<int>('ID', value);
}
