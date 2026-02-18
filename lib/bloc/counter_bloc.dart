import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterAddEvent>(_onCounterIncrement);
    on<CounterMinusEvent>(_onCounterMinusEvent);
  }

  void _onCounterIncrement(CounterAddEvent event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(status: CounterStatus.success, counter: state.counter + 1),
    );
  }

  void _onCounterMinusEvent(
    CounterMinusEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(
      state.copyWith(status: CounterStatus.success, counter: state.counter - 1),
    );
  }
}
