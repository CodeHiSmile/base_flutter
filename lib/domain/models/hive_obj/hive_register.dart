import 'package:demo/domain/models/entities/note_entity.dart';
import 'package:hive/hive.dart';

registerHiveAdapters() {
  Hive.registerAdapter(NoteEntityAdapter());
}