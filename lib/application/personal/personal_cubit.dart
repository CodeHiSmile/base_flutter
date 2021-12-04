import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'personal_state.dart';

@injectable
class PersonalCubit extends Cubit<PersonalState> {
  PersonalCubit() : super(PersonalState());
}
