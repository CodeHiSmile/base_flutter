part of 'note_cubit.dart';

class NoteState extends Equatable {
  final LoadStatus? loadStatus;
  final String? msg;

  NoteState({
    this.loadStatus,
    this.msg,
  });

  NoteState copyWith({
    LoadStatus? loadStatus,
    String? msg,
  }) {
    return NoteState(
      loadStatus: loadStatus ?? this.loadStatus,
      msg: msg ?? this.msg,
    );
  }
  @override
  List<Object?> get props => [
    loadStatus, msg
  ];
}
