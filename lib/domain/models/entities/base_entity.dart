import 'package:hive/hive.dart';

abstract class BaseEntity extends HiveObject {
  @HiveField(0)
  String? id;

  BaseEntity({
    this.id,
  });
}