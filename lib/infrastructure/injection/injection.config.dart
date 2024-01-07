// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_project_template_firebase/features/home_page/cubit/home_cubit.dart'
    as _i4;
import 'package:flutter_project_template_firebase/infrastructure/injection/injection_module.dart'
    as _i8;
import 'package:flutter_project_template_firebase/infrastructure/secure_local_storage/lsecure_local_storage.dart'
    as _i6;
import 'package:flutter_project_template_firebase/routes/router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    gh.factory<_i4.HomeCubit>(() => _i4.HomeCubit());
    gh.factory<_i5.LocalAuthentication>(
        () => injectionModule.localAuthentication);
    gh.singleton<_i6.SecureLocalStorage>(_i6.SecureLocalStorage());
    gh.factoryAsync<_i7.SharedPreferences>(() => injectionModule.prefs);
    return this;
  }
}

class _$InjectionModule extends _i8.InjectionModule {}
