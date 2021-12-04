import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'app_state.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState());
}
