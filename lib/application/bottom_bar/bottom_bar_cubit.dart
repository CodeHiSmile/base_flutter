import 'package:demo/domain/models/enums/load_status.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_bar_state.dart';

class BottomBarCubit extends Cubit<BottomBarState> {
  BottomBarCubit()
      : super(BottomBarState(
          indexTab: 0,
        ));

  void changeTabIndex(int indexTap) {
    emit(state.copyWith(indexTab: indexTap));
  }
}
