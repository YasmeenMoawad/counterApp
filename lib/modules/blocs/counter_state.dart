import 'package:untitled/modules/data_sources/counter_data_source.dart';

abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterLoading extends CounterState {}

class CounterSuccess extends CounterState {
  late CounterDataSource prefs;
  CounterSuccess(this.prefs);
}
class CounterError extends CounterState {
  String errorMessage;
  CounterError(this.errorMessage);
}