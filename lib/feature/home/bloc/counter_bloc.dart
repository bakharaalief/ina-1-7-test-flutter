import 'package:bloc/bloc.dart';
import 'package:test_satu_tujuh/feature/home/bloc/counter_event.dart';
import 'package:test_satu_tujuh/feature/home/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterNotDoingState()) {
    //event one
    on<CounterOneEvent>((event, emit) {
      var message = StringBuffer('');
      for (var i = 1; i <= event.number; i++) {
        message.write("$i ");
      }
      emit(CounterResultState(message.toString()));
    });

    //event two
    on<CounterTwoEvent>((event, emit) {
      var message = StringBuffer('');
      for (var i = 1; i <= event.number; i++) {
        message.write("$i ");
      }

      for (var i = event.number - 1; i >= 1; i--) {
        message.write("$i ");
      }
      emit(CounterResultState(message.toString()));
    });

    //event three
    on<CounterThreeEvent>((event, emit) {
      var message = StringBuffer('');
      for (var i = 1; i <= event.number; i++) {
        message.write("$i${i - 1} ");
      }
      emit(CounterResultState(message.toString()));
    });

    //event four
    on<CounterFourEvent>((event, emit) {
      var message = StringBuffer('');
      for (var i = 1; i <= event.number; i++) {
        if (i % 5 == 0) {
          message.write("lima ");
        } else if (i % 7 == 0) {
          message.write("tujuh ");
        } else {
          message.write("$i ");
        }
      }
      emit(CounterResultState(message.toString()));
    });
  }
}
