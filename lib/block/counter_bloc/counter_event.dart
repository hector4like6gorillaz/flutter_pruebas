part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class AddCounter extends CounterEvent {}

class DecreaseCounter extends CounterEvent {}

class ShowHideText extends CounterEvent {
  final bool elBool;

  const ShowHideText({required this.elBool});
}
