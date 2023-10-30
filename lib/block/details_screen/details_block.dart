import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "details_event.dart";
part "details_state.dart";

class DetailsBlock extends Bloc<DetailsEvent, DetailsState> {
  DetailsBlock() : super(const DetailsInitialState()) {
    on<HideDetailsEvent>((event, emit) {
      //print(event.showHide);
      emit(const SetDetailsState(false));
    });
    on<ShowDetailsEvent>((event, emit) {
      //print(event.showHide);
      emit(const SetDetailsState(true));
    });
  }
}
