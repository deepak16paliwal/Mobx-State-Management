import 'package:mobx/mobx.dart';

part 'infoStore.g.dart';

class InfoStore = _InfoStore with _$InfoStore;

abstract class _InfoStore with Store {
  final InfoErrorState error = InfoErrorState();
  @observable
  String email = '';

  @observable
  String name = '';

  @observable
  String childName = '';

  @observable
  String screenUsage = 'Choose here';

  @observable
  String age = 'Choose here';
  @computed
  bool get success => !error.hasErros;

  @computed
  bool get continues {
    if (age == 'Choose here' || screenUsage == "Choose here") {
      return false;
    }
    else{
return true;
    }
    
  }

  late List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => name, validateName),
      reaction((_) => email, validateEmail),
      reaction((_) => childName, validateChildName),
    ];
  }

  @action
  void validateName(String value) {
    // ignore: unnecessary_null_comparison
    error.name = value.isEmpty ? 'Please Enter Name' : null;
  }

  @action
  void validateEmail(String value) {
    error.email =
        // ignore: unnecessary_null_comparison
        (value == null) || value.isEmpty ? 'Please Enter Email' : null;
  }

  @action
  void validateChildName(String value) {
    // ignore: unnecessary_null_comparison
    error.childName =
        (value == null) || value.isEmpty ? 'Please Enter Pin' : null;
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
  void setChildName(String value) {
    childName = value;
  }

  @action
  void setAge(String value) {
    age = value;
  }

  @action
  void setScreenUsage(String value) {
    screenUsage = value;
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  void validateAll() {
    validateEmail(email);
    validateName(name);
    validateChildName(childName);
  }
}

class InfoErrorState = _InfoErrorState with _$InfoErrorState;

abstract class _InfoErrorState with Store {
  @observable
  String? email;

  @observable
  String? name;

  @observable
  String? childName;

  @computed
  bool get hasErros => email != null || name != null || childName != null;
}
