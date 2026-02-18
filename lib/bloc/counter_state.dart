enum CounterStatus { initial, loading, success, failure }

class CounterState {
  const CounterState({this.counter = 0, this.status = CounterStatus.initial});
  final int counter;
  final CounterStatus status;
  CounterState copyWith({int? counter, CounterStatus? status}) => CounterState(
    counter: counter ?? this.counter,
    status: status ?? this.status,
  );
}
