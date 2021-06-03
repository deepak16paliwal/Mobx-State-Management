// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'infoStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InfoStore on _InfoStore, Store {
  Computed<bool>? _$successComputed;

  @override
  bool get success => (_$successComputed ??=
          Computed<bool>(() => super.success, name: '_InfoStore.success'))
      .value;
  Computed<bool>? _$continuesComputed;

  @override
  bool get continues => (_$continuesComputed ??=
          Computed<bool>(() => super.continues, name: '_InfoStore.continues'))
      .value;

  final _$emailAtom = Atom(name: '_InfoStore.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$nameAtom = Atom(name: '_InfoStore.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$childNameAtom = Atom(name: '_InfoStore.childName');

  @override
  String get childName {
    _$childNameAtom.reportRead();
    return super.childName;
  }

  @override
  set childName(String value) {
    _$childNameAtom.reportWrite(value, super.childName, () {
      super.childName = value;
    });
  }

  final _$screenUsageAtom = Atom(name: '_InfoStore.screenUsage');

  @override
  String get screenUsage {
    _$screenUsageAtom.reportRead();
    return super.screenUsage;
  }

  @override
  set screenUsage(String value) {
    _$screenUsageAtom.reportWrite(value, super.screenUsage, () {
      super.screenUsage = value;
    });
  }

  final _$ageAtom = Atom(name: '_InfoStore.age');

  @override
  String get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(String value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  final _$_InfoStoreActionController = ActionController(name: '_InfoStore');

  @override
  void validateName(String value) {
    final _$actionInfo = _$_InfoStoreActionController.startAction(
        name: '_InfoStore.validateName');
    try {
      return super.validateName(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_InfoStoreActionController.startAction(
        name: '_InfoStore.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateChildName(String value) {
    final _$actionInfo = _$_InfoStoreActionController.startAction(
        name: '_InfoStore.validateChildName');
    try {
      return super.validateChildName(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String value) {
    final _$actionInfo =
        _$_InfoStoreActionController.startAction(name: '_InfoStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo =
        _$_InfoStoreActionController.startAction(name: '_InfoStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setChildName(String value) {
    final _$actionInfo = _$_InfoStoreActionController.startAction(
        name: '_InfoStore.setChildName');
    try {
      return super.setChildName(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAge(String value) {
    final _$actionInfo =
        _$_InfoStoreActionController.startAction(name: '_InfoStore.setAge');
    try {
      return super.setAge(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setScreenUsage(String value) {
    final _$actionInfo = _$_InfoStoreActionController.startAction(
        name: '_InfoStore.setScreenUsage');
    try {
      return super.setScreenUsage(value);
    } finally {
      _$_InfoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
name: ${name},
childName: ${childName},
screenUsage: ${screenUsage},
age: ${age},
success: ${success},
continues: ${continues}
    ''';
  }
}

mixin _$InfoErrorState on _InfoErrorState, Store {
  Computed<bool>? _$hasErrosComputed;

  @override
  bool get hasErros =>
      (_$hasErrosComputed ??= Computed<bool>(() => super.hasErros,
              name: '_InfoErrorState.hasErros'))
          .value;

  final _$emailAtom = Atom(name: '_InfoErrorState.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$nameAtom = Atom(name: '_InfoErrorState.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$childNameAtom = Atom(name: '_InfoErrorState.childName');

  @override
  String? get childName {
    _$childNameAtom.reportRead();
    return super.childName;
  }

  @override
  set childName(String? value) {
    _$childNameAtom.reportWrite(value, super.childName, () {
      super.childName = value;
    });
  }

  @override
  String toString() {
    return '''
email: ${email},
name: ${name},
childName: ${childName},
hasErros: ${hasErros}
    ''';
  }
}
