import 'dart:async';

import 'package:mobx/mobx.dart';

// Include generated file
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-class
abstract class _Counter with Store {
  @observable
  int value = 0;

  @action
  Future<void> incrementAsync() async {
    await Future.delayed(Duration(milliseconds: 200));
    value++;
  }

  @action
  Future<void> async2() async {
    await Future.delayed(Duration(milliseconds: 200));
    throw Exception("test2");
  }
}
