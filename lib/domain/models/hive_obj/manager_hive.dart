import 'package:demo/domain/models/entities/base_entity.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

Type typeOf<T>() => T;

final _uuid = Uuid();

class HiveRepository<T extends BaseEntity> {
  Future<List<T>> query({
    bool Function(T)? filter,
    bool isQueryUser = false,
    bool includeDeletedItems = false,
    int pageSize = 100,
  }) async {
    final box = await _getBox();

    var query = box.values;

    if (filter != null) {
      query = query.where(filter);
    }
    return query.take(pageSize).toList();
  }

  Future<T?> get(String id) async {
    final box = await _getBox();
    return box.get(id);
  }

  Future<String> create(T entity) async {
    entity.id = _generateId();

    final box = await _getBox();
    await box.put(entity.id, entity);
    return entity.id!;
  }

  Future<bool> update(T entity) async {
    final box = await _getBox();
    await box.put(entity.id, entity);
    return true;
  }

  Future<bool> clear() async {
    final box = await _getBox();
    await box.clear();
    return true;
  }

  Future<bool> delete(String id) async {
    final box = await _getBox();
    final entity = box.get(id);

    await box.put(entity!.id, entity);

    return true;
  }

  Future<Box<T>> _getBox() async {
    final boxName = T.toString().toLowerCase();

    if (Hive.isBoxOpen(boxName)) {
      return Hive.box<T>(boxName);
    }

    return await Hive.openBox<T>(boxName);
  }

  String _generateId() {
    return _uuid.v4();
  }
}