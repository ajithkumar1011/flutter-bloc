abstract class CounterEvent {
  const CounterEvent();
}

class CounterAddEvent extends CounterEvent {
  const CounterAddEvent();
}

class CounterMinusEvent extends CounterEvent {
  const CounterMinusEvent();
}
