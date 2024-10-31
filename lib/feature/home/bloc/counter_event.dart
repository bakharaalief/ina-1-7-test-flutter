sealed class CounterEvent {
  final int number;

  CounterEvent(this.number);
}

class CounterOneEvent extends CounterEvent {
  CounterOneEvent(super.number);
}

class CounterTwoEvent extends CounterEvent {
  CounterTwoEvent(super.number);
}

class CounterThreeEvent extends CounterEvent {
  CounterThreeEvent(super.number);
}

class CounterFourEvent extends CounterEvent {
  CounterFourEvent(super.number);
}
