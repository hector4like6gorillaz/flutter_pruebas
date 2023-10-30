part of "details_block.dart";

abstract class DetailsEvent extends Equatable {
  const DetailsEvent();
  @override
  List<Object> get props => [];
}

class HideDetailsEvent extends DetailsEvent {
  const HideDetailsEvent(this.showHide);
  final bool showHide;
}

class ShowDetailsEvent extends DetailsEvent {
  const ShowDetailsEvent(this.showHide);
  final bool showHide;
}
