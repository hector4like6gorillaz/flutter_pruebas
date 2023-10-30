part of "details_block.dart";

abstract class DetailsState extends Equatable {
  final bool existDetail;
  final String? detail;

  const DetailsState({required this.existDetail, this.detail});

  @override
  List<Object?> get props => [];
}

class DetailsInitialState extends DetailsState {
  const DetailsInitialState()
      : super(
            detail: "esto es un ejemplo del initial state", existDetail: false);
}

class SetDetailsState extends DetailsState {
  final bool newExistDetail;
  const SetDetailsState(this.newExistDetail)
      : super(existDetail: newExistDetail);
}
