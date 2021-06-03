import 'package:mobx/mobx.dart';
part 'userStore.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  final UserErrorState error = UserErrorState();
  @observable
  String email = '';

  @observable
  String name = '';

  @observable
  String avtarName = '';

  @observable
  String pin = '';

  @observable
  String tokens = "0";

  @observable
  String gems = "0";

  @observable
  String maxToken = "0";

  @observable
  String profile = 'Profile';

  @computed
  bool get success => !error.hasErros;

  late List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => name, validateName),
      reaction((_) => email, validateEmail),
      reaction((_) => avtarName, validateAvtarName),
      reaction((_) => pin, validatePin),
    ];
  }

  @action
  void validateName(String value) {
    // ignore: unnecessary_null_comparison
    error.name =  value.isEmpty ? 'Please Enter Name' : null;
  }

  @action
  void validateEmail(String value) {
    error.email =
        // ignore: unnecessary_null_comparison
        (value == null) || value.isEmpty ? 'Please Enter Email' : null;
  }

  @action
  void validatePin(String value) {
    // ignore: unnecessary_null_comparison
    error.pin = (value == null) || value.isEmpty ? 'Please Enter Pin' : null;
  }

  @action
  void validateAvtarName(String value) {
    // ignore: unnecessary_null_comparison
    error.avtarName =
        // ignore: unnecessary_null_comparison
        (value == null) || value.isEmpty ? 'Please Enter Avtar Name' : null;
  }

  @action
  void setName(String value) {
    name = value;
  }

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPin(String value) {
    pin = value;
  }

  @action
  void setAvtarName(String value) {
    avtarName = value;
  }

  @action
  void setTokens(String value) {
    tokens = value;
  }

  @action
  void setGems(String value) {
    gems = value;
  }

  @action
  void setMaxToken(String value) {
    maxToken = value;
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  void validateAll() {
    validateEmail(email);
    validateName(name);
    validateAvtarName(avtarName);
    validatePin(pin);
    
  }
}

class UserErrorState = _UserErrorState with _$UserErrorState;

abstract class _UserErrorState with Store {
  @observable
  String? email;

  @observable
  String? name;

  @observable
  String? avtarName;

  @observable
  String? pin;

  @computed
  bool get hasErros =>
      email != null || name != null || avtarName != null || pin != null;
}
