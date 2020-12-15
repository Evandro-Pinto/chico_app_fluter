import 'package:moor/moor.dart';

// Define tables that can model a database of recipes.
part 'task_table.g.dart';

@DataClassName('Tbl_task')
class TaskTable extends Table {
  IntColumn get id => integer().autoIncrement().call();
  TextColumn get description => text().nullable()();
  TextColumn get title => text().nullable()();
  DateTimeColumn get creatAt => dateTime().nullable().call();
}
@UseMoor(
  tables: [TaskTable,],
  queries: {
    
  },
)
class Database extends _$Database {
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        // populate data
        
      },
    );
  }
}