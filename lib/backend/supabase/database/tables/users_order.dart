import '../database.dart';

class UsersOrderTable extends SupabaseTable<UsersOrderRow> {
  @override
  String get tableName => 'users_order';

  @override
  UsersOrderRow createRow(Map<String, dynamic> data) => UsersOrderRow(data);
}

class UsersOrderRow extends SupabaseDataRow {
  UsersOrderRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersOrderTable();

  int get order => getField<int>('order#')!;
  set order(int value) => setField<int>('order#', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get prodname => getField<String>('prodname');
  set prodname(String? value) => setField<String>('prodname', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
