import 'package:untitled/modules/data_sources/counter_data_source.dart';

class CounterRepo {
  late CounterDataSource dataSource;
  CounterRepo(this.dataSource);

  Future<int> getIncrementCounter() async {
    try{
      await dataSource.incrementCounter();
      return dataSource.counter;
    } catch(e){
      throw "error";
    }
  }
  Future<int> getDecrementCounter() async {
    try{
      await dataSource.decrementCounter();
      return dataSource.counter;
    } catch(e){
      throw "Failed";
    }
  }
  int getCounter(){
    try{
      return dataSource.counter;
    } catch(e){
      throw "error";
    }
  }
}