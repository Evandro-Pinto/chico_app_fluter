// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_table.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Tbl_task extends DataClass implements Insertable<Tbl_task> {
  final String description;
  final String title;
  Tbl_task({this.description, this.title});
  factory Tbl_task.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return Tbl_task(
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    return map;
  }

  TaskTableCompanion toCompanion(bool nullToAbsent) {
    return TaskTableCompanion(
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
    );
  }

  factory Tbl_task.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Tbl_task(
      description: serializer.fromJson<String>(json['description']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'description': serializer.toJson<String>(description),
      'title': serializer.toJson<String>(title),
    };
  }

  Tbl_task copyWith({String description, String title}) => Tbl_task(
        description: description ?? this.description,
        title: title ?? this.title,
      );
  @override
  String toString() {
    return (StringBuffer('Tbl_task(')
          ..write('description: $description, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(description.hashCode, title.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Tbl_task &&
          other.description == this.description &&
          other.title == this.title);
}

class TaskTableCompanion extends UpdateCompanion<Tbl_task> {
  final Value<String> description;
  final Value<String> title;
  const TaskTableCompanion({
    this.description = const Value.absent(),
    this.title = const Value.absent(),
  });
  TaskTableCompanion.insert({
    this.description = const Value.absent(),
    this.title = const Value.absent(),
  });
  static Insertable<Tbl_task> custom({
    Expression<String> description,
    Expression<String> title,
  }) {
    return RawValuesInsertable({
      if (description != null) 'description': description,
      if (title != null) 'title': title,
    });
  }

  TaskTableCompanion copyWith(
      {Value<String> description, Value<String> title}) {
    return TaskTableCompanion(
      description: description ?? this.description,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskTableCompanion(')
          ..write('description: $description, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }
}

class $TaskTableTable extends TaskTable
    with TableInfo<$TaskTableTable, Tbl_task> {
  final GeneratedDatabase _db;
  final String _alias;
  $TaskTableTable(this._db, [this._alias]);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [description, title];
  @override
  $TaskTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'task_table';
  @override
  final String actualTableName = 'task_table';
  @override
  VerificationContext validateIntegrity(Insertable<Tbl_task> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Tbl_task map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Tbl_task.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TaskTableTable createAlias(String alias) {
    return $TaskTableTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TaskTableTable _taskTable;
  $TaskTableTable get taskTable => _taskTable ??= $TaskTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [taskTable];
}
