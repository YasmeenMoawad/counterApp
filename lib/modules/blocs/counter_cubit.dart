import 'package:bloc/bloc.dart';
import 'package:untitled/modules/blocs/counter_state.dart';
import 'package:untitled/modules/repo/counter_repo.dart';
import 'package:untitled/modules/data_sources/counter_data_source.dart';


class CounterCubit extends Cubit<CounterState> {
  CounterRepo repo;

  CounterCubit(this.repo) : counter = repo.getCounter(),
        super(CounterInitial());

  late CounterDataSource prefs;
  int counter;
  void incCounter() async {
    try{
      emit(CounterLoading());
      counter = await repo.getIncrementCounter();
      emit(CounterSuccess(prefs));
    } catch (e) {
      emit(CounterError("Failed"));
    }
  }
  void decCounter() async {
    try{
      emit(CounterLoading());
      counter = await repo.getDecrementCounter();
      emit(CounterSuccess(prefs));
    } catch (e) {
      emit(CounterError("Failed"));
    }
  }
}