import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsTable();

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get price => getField<String>('price');
  set price(String? value) => setField<String>('price', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);
}
