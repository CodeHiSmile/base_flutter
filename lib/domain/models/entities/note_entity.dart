import 'package:demo/domain/models/hive_obj/hive_type.dart';
import 'package:hive/hive.dart';
import 'base_entity.dart';

part 'note_entity.g.dart';

@HiveType(typeId: HiveTypeId.note)
class NoteEntity extends BaseEntity {
  @HiveField(1)
  String? title;
  @HiveField(2)
  String? content;
  @HiveField(3)
  String? time;

  NoteEntity({
    this.title,
    this.content,
    this.time,
  });
}
