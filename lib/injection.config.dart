// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/repository/auth.dart' as _i3;
import 'data/repository/impl/auth_impl.dart' as _i4;
import 'presenter/auth_presenter.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.Auth>(() => _i4.AuthImpl());
  gh.factory<_i5.AuthPresenter>(() => _i5.AuthPresenterImpl(get<_i3.Auth>()));
  return get;
}
