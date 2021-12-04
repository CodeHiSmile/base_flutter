import 'package:bloc/bloc.dart';
import 'package:demo/domain/models/entities/note_entity.dart';
import 'package:demo/domain/models/enums/load_status.dart';
import 'package:demo/helper/datetime_formatter.dart';
import 'package:demo/infrastructure/services/note_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

part 'note_state.dart';

@injectable
class NoteCubit extends Cubit<NoteState> {
  final INoteRepository _noteRepository;

  NoteCubit(this._noteRepository)
      : super(NoteState(
          loadStatus: LoadStatus.initial,
          msg: '',
        ));

  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  void createNote() async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      final result = await _noteRepository.create(
        NoteEntity(
          title: titleController.text,
          content: contentController.text,
          time: DateTime.now().customOnlyDate(),
        ),
      );
      if (result != null) {
        emit(state.copyWith(loadStatus: LoadStatus.success));
      }
    } catch (e) {
      emit(state.copyWith(loadStatus: LoadStatus.failure));
    }
  }
}
