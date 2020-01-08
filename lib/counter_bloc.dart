import 'package:app_bloc_practica/counter_event.dart';
import 'package:app_bloc_practica/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{

  void onIncrement(){
    dispatch(IncrementEvent());
  }

  void onDecrement(){
    dispatch(DecrementEvent());
  }

  @override
  CounterState get initialState => CounterState.initial();
  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async*{
    CounterState currentState;
    if(event is IncrementEvent){
      
      yield currentState..counter += 1;
    }else if(event is DecrementEvent){
      yield currentState..counter -= 1;
    }
  }

  // @override
  // Stream<CounterState> mapEventToState(
  //      CounterEvent event
  //   )async* {
  //   if (event is IncrementEvent) {
  //     var currentState;
  //     yield currentState..counter += 1;
  //   } else if(event is DecrementEvent){
  //     yield currentState..counter -= 1;
  //   }
  // }

}