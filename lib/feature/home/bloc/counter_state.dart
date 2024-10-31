sealed class CounterState {}

class CounterNotDoingState extends CounterState {}

class CounterResultState extends CounterState {
  final String result;

  CounterResultState(this.result);
}
