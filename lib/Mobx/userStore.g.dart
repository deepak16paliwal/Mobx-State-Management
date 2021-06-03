// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  Computed<bool>? _$successComputed;

  @override
  bool get success => (_$successComputed ??=
          Computed<bool>(() => super.success, name: '_UserStore.success'))
      .value;

  final _$emailAtom = Atom(name: '_UserStore.email');

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

  final _$nameAtom = Atom(name: '_UserStore.name');

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

  final _$avtarNameAtom = Atom(name: '_UserStore.avtarName');

  @override
  String get avtarName {
    _$avtarNameAtom.reportRead();
    return super.avtarName;
  }

  @override
  set avtarName(String value) {
    _$avtarNameAtom.reportWrite(value, super.avtarName, () {
      super.avtarName = value;
    });
  }

  final _$pinAtom = Atom(name: '_UserStore.pin');

  @override
  String get pin {
    _$pinAtom.reportRead();
    return super.pin;
  }

  @override
  set pin(String value) {
    _$pinAtom.reportWrite(value, super.pin, () {
      super.pin = value;
    });
  }

  final _$tokensAtom = Atom(name: '_UserStore.tokens');

  @override
  String get tokens {
    _$tokensAtom.reportRead();
    return super.tokens;
  }

  @override
  set tokens(String value) {
    _$tokensAtom.reportWrite(value, super.tokens, () {
      super.tokens = value;
    });
  }

  final _$gemsAtom = Atom(name: '_UserStore.gems');

  @override
  String get gems {
    _$gemsAtom.reportRead();
    return super.gems;
  }

  @override
  set gems(String value) {
    _$gemsAtom.reportWrite(value, super.gems, () {
      super.gems = value;
    });
  }

  final _$maxTokenAtom = Atom(name: '_UserStore.maxToken');

  @override
  String get maxToken {
    _$maxTokenAtom.reportRead();
    return super.maxToken;
  }

  @override
  set maxToken(String value) {
    _$maxTokenAtom.reportWrite(value, super.maxToken, () {
      super.maxToken = value;
    });
  }

  final _$profileAtom = Atom(name: '_UserStore.profile');

  @override
  String get profile {
    _$profileAtom.reportRead();
    return super.profile;
  }

  @override
  set profile(String value) {
    _$profileAtom.reportWrite(value, super.profile, () {
      super.profile = value;
    });
  }

  final _$_UserStoreActionController = ActionController(name: '_UserStore');

  @override
  void validateName(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.validateName');
    try {
      return super.validateName(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePin(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.validatePin');
    try {
      return super.validatePin(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateAvtarName(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.validateAvtarName');
    try {
      return super.validateAvtarName(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setName(String value) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPin(String value) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.setPin');
    try {
      return super.setPin(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAvtarName(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.setAvtarName');
    try {
      return super.setAvtarName(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTokens(String value) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.setTokens');
    try {
      return super.setTokens(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGems(String value) {
    final _$actionInfo =
        _$_UserStoreActionController.startAction(name: '_UserStore.setGems');
    try {
      return super.setGems(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMaxToken(String value) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.setMaxToken');
    try {
      return super.setMaxToken(value);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
name: ${name},
avtarName: ${avtarName},
pin: ${pin},
tokens: ${tokens},
gems: ${gems},
maxToken: ${maxToken},
profile: ${profile},
success: ${success}
    ''';
  }
}

mixin _$UserErrorState on _UserErrorState, Store {
  Computed<bool>? _$hasErrosComputed;

  @override
  bool get hasErros =>
      (_$hasErrosComputed ??= Computed<bool>(() => super.hasErros,
              name: '_UserErrorState.hasErros'))
          .value;

  final _$emailAtom = Atom(name: '_UserErrorState.email');

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

  final _$nameAtom = Atom(name: '_UserErrorState.name');

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

  final _$avtarNameAtom = Atom(name: '_UserErrorState.avtarName');

  @override
  String? get avtarName {
    _$avtarNameAtom.reportRead();
    return super.avtarName;
  }

  @override
  set avtarName(String? value) {
    _$avtarNameAtom.reportWrite(value, super.avtarName, () {
      super.avtarName = value;
    });
  }

  final _$pinAtom = Atom(name: '_UserErrorState.pin');

  @override
  String? get pin {
    _$pinAtom.reportRead();
    return super.pin;
  }

  @override
  set pin(String? value) {
    _$pinAtom.reportWrite(value, super.pin, () {
      super.pin = value;
    });
  }

  @override
  String toString() {
    return '''
email: ${email},
name: ${name},
avtarName: ${avtarName},
pin: ${pin},
hasErros: ${hasErros}
    ''';
  }
}
