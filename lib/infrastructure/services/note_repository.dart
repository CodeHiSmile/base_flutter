import 'package:demo/domain/models/entities/note_entity.dart';
import 'package:demo/domain/models/hive_obj/manager_hive.dart';
import 'package:injectable/injectable.dart';

abstract class INoteRepository {
  Future create(NoteEntity note);

  Future editNote(NoteEntity note);

  Future<List<NoteEntity>> getListNote();
}

@LazySingleton(as: INoteRepository)
class NoteRepository extends INoteRepository {
  NoteRepository();

  final _noteRepository = HiveRepository<NoteEntity>();

  @override
  Future create(NoteEntity note) async {
    await _noteRepository.create(note);
  }

  @override
  Future editNote(NoteEntity note) async {
    await _noteRepository.update(note);
  }

  @override
  Future<List<NoteEntity>> getListNote() {
    return _noteRepository.query();
  }
}
