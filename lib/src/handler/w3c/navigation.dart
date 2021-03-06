import 'package:appium_driver/src/common/webdriver_handler.dart';

import 'package:webdriver/src/common/request.dart'; // ignore: implementation_imports
import 'package:webdriver/src/handler/w3c/utils.dart'; // ignore: implementation_imports

class W3cNavigationHandler extends NavigationHandler {
  @override
  WebDriverRequest buildNavigateToRequest(String url) =>
      WebDriverRequest.postRequest('url', {'url': url});

  @override
  void parseNavigateToResponse(WebDriverResponse response) {
    parseW3cResponse(response);
  }

  @override
  WebDriverRequest buildForwardRequest() =>
      WebDriverRequest.postRequest('forward');

  @override
  void parseForwardResponse(WebDriverResponse response) {
    parseW3cResponse(response);
  }

  @override
  WebDriverRequest buildBackRequest() => WebDriverRequest.postRequest('back');

  @override
  void parseBackResponse(WebDriverResponse response) {
    parseW3cResponse(response);
  }

  @override
  WebDriverRequest buildRefreshRequest() =>
      WebDriverRequest.postRequest('refresh');

  @override
  void parseRefreshResponse(WebDriverResponse response) {
    parseW3cResponse(response);
  }
}
