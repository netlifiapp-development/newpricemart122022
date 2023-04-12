import '../database.dart';

class AllprodsTable extends SupabaseTable<AllprodsRow> {
  @override
  String get tableName => 'allprods';

  @override
  AllprodsRow createRow(Map<String, dynamic> data) => AllprodsRow(data);
}

class AllprodsRow extends SupabaseDataRow {
  AllprodsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AllprodsTable();

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get price => getField<String>('price');
  set price(String? value) => setField<String>('price', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
