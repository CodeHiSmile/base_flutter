part of 'home_cubit.dart';

class HomeState extends Equatable {
  final LoadStatus? loadStatus;
  final String? msg;
  final List<NoteEntity>? listNote;

  HomeState({
    this.loadStatus,
    this.msg,
    this.listNote,
  });

  HomeState copyWith({
    LoadStatus? loadStatus,
    String? msg,
    List<NoteEntity>? listNote,
  }) {
    return HomeState(
      loadStatus: loadStatus ?? this.loadStatus,
      msg: msg ?? this.msg,
      listNote: listNote ?? this.listNote,
    );
  }

  @override
  List<Object?> get props => [
        loadStatus,
        msg,
        listNote,
      ];
}
