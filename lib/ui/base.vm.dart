import 'package:currency_converter/core/enum/viewState.enum.dart';
import 'package:currency_converter/core/services/navigation_service.dart';
import 'package:flutter/foundation.dart';

import '../locator.dart';

class BaseViewModel extends ChangeNotifier {
  ViewState _viewState = ViewState.idle;
  NavigationService navigationService = getIt<NavigationService>();

  ViewState get viewState => _viewState;

  set viewState(ViewState newState) {
    _viewState = newState;
    notifyListeners();
  }
}
