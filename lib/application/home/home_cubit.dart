import 'package:bloc/bloc.dart';
import 'package:demo/domain/models/entities/note_entity.dart';
import 'package:demo/domain/models/enums/load_status.dart';
import 'package:demo/infrastructure/services/note_repository.dart';
import 'package:demo/utils/logger.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final INoteRepository _noteRepository;

  HomeCubit(this._noteRepository) : super(HomeState());

  getListNote() async {
    emit(state.copyWith(loadStatus: LoadStatus.loading));
    try {
      final result = await _noteRepository.getListNote();

      emit(
        state.copyWith(
          listNote: result,
          loadStatus: LoadStatus.success,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loadStatus: LoadStatus.failure));
    }
  }

  getList2() {
    logger.d("in ra roi");
  }
}
