import 'package:currency_converter/core/services/storage-service.dart';
import 'package:currency_converter/ui/home/home.vm.dart';
import 'package:get_it/get_it.dart';

import 'core/services/navigation_service.dart';

GetIt getIt = GetIt.I;

dependenciesInjectorSetup() {
  //View Model
  getIt.registerFactory<HomeViewModel>(() => HomeViewModel());

  // Services
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  getIt.registerLazySingleton<StorageService>(() => StorageService());

}
