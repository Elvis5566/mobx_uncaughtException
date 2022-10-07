// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Counter on _Counter, Store {
  late final _$valueAtom = Atom(name: '_Counter.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$incrementAsyncAsyncAction =
      AsyncAction('_Counter.incrementAsync', context: context);

  @override
  Future<void> incrementAsync() {
    return _$incrementAsyncAsyncAction.run(() => super.incrementAsync());
  }

  late final _$async2AsyncAction =
      AsyncAction('_Counter.async2', context: context);

  @override
  Future<void> async2() {
    return _$async2AsyncAction.run(() => super.async2());
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
