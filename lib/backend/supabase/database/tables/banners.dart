import '../database.dart';

class BannersTable extends SupabaseTable<BannersRow> {
  @override
  String get tableName => 'banners';

  @override
  BannersRow createRow(Map<String, dynamic> data) => BannersRow(data);
}

class BannersRow extends SupabaseDataRow {
  BannersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BannersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
