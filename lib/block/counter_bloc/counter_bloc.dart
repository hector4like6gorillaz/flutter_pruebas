import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<AddCounter>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });
    on<DecreaseCounter>((event, emit) {
      emit(state.copyWith(counter: state.counter - 1));
    });
    on<ShowHideText>((event, emit) {
      emit(state.copyWith(loading: event.elBool));
    });
  }
}
