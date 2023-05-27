import '../database.dart';

class CategoryTable extends SupabaseTable<CategoryRow> {
  @override
  String get tableName => 'category';

  @override
  CategoryRow createRow(Map<String, dynamic> data) => CategoryRow(data);
}

class CategoryRow extends SupabaseDataRow {
  CategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoryTable();

  String? get title => getField<String>('Title');
  set title(String? value) => setField<String>('Title', value);

  String? get icon => getField<String>('icon');
  set icon(String? value) => setField<String>('icon', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);

  String? get iconImage => getField<String>('icon_image');
  set iconImage(String? value) => setField<String>('icon_image', value);
}
