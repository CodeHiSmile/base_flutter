part of 'bottom_bar_cubit.dart';

class BottomBarState extends Equatable {
  LoadStatus? loadStatus;
  int? indexTab;

  BottomBarState({
    this.loadStatus,
    this.indexTab,
  });

  BottomBarState copyWith({
    LoadStatus? loadStatus,
    int? indexTab,
  }) {
    return BottomBarState(
      loadStatus: loadStatus ?? this.loadStatus,
      indexTab: indexTab ?? this.indexTab,
    );
  }

  @override
  List<Object?> get props => [
    loadStatus,
    indexTab,
  ];
}
