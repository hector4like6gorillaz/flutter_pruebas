part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final bool loading;
  final String error;
  final bool add;
  final int counter;

  const CounterState(
      {this.counter = 0,
      this.loading = false,
      this.error = "",
      this.add = false});

  CounterState copyWith(
          {bool? loading, String? error, bool? add, int? counter}) =>
      CounterState(
          loading: loading ?? this.loading,
          error: error ?? this.error,
          add: add ?? this.add,
          counter: counter ?? this.counter);

  @override
  List<Object> get props => [loading, error, add, counter];
}
