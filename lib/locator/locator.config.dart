// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../application/blocs/app_cubit.dart' as _i3;
import '../application/home/home_cubit.dart' as _i8;
import '../application/note/note_cubit.dart' as _i5;
import '../application/notification/notification_cubit.dart' as _i6;
import '../application/personal/personal_cubit.dart' as _i7;
import '../infrastructure/services/note_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AppCubit>(() => _i3.AppCubit());
  gh.lazySingleton<_i4.INoteRepository>(() => _i4.NoteRepository());
  gh.factory<_i5.NoteCubit>(() => _i5.NoteCubit(get<_i4.INoteRepository>()));
  gh.factory<_i6.NotificationCubit>(() => _i6.NotificationCubit());
  gh.factory<_i7.PersonalCubit>(() => _i7.PersonalCubit());
  gh.factory<_i8.HomeCubit>(() => _i8.HomeCubit(get<_i4.INoteRepository>()));
  return get;
}
