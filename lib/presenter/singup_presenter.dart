import 'package:injectable/injectable.dart';

import '../data/repository/auth.dart';

abstract class SignUpPresenter {
  Future<bool> signupUser(username, password);
}

@Injectable(as: SignUpPresenter)
class SignUpPresenterImpl extends SignUpPresenter {

  final Auth auth;

  SignUpPresenterImpl(this.auth);

  @override
  Future<bool> signupUser(username, password) async {
    return await auth.signIn(username: username, password: password);
  }

}