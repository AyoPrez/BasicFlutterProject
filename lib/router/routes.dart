import 'package:fluro/fluro.dart';
import 'package:lucha_fantasy/ui/MainScreen.dart';
import 'package:lucha_fantasy/ui/create_account.dart';
import 'package:lucha_fantasy/ui/login.dart';

import '../ui/SplashScreen.dart';

class Routes {
  static final FluroRouter router = FluroRouter();

  static final Handler _splashScreen = Handler(handlerFunc: (context, parameters) => const SplashScreen());

  static final Handler _loginScreen = Handler(handlerFunc: (context, parameters) => const Login());

  static final Handler _registerScreen = Handler(handlerFunc: (context, parameters) => const CreateAccount());

  static final Handler _mainScreen = Handler(handlerFunc: (context, parameters) => const MainScreen());

  static void setupRouter() {
    router.define('/', handler: _splashScreen);
    router.define('/iniciar', handler: _loginScreen, transitionType: TransitionType.fadeIn);
    router.define('/registro', handler: _registerScreen, transitionType: TransitionType.native);
    router.define('/principal/:name', handler: _mainScreen);
  }

}