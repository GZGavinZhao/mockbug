import 'package:ngdart/angular.dart';
import 'package:ngrouter/ngrouter.dart';
import 'package:mockbug/app_component.template.dart' as ng;

import 'main.template.dart' as self;

const useHashLS = false;
@GenerateInjector(
  routerProvidersHash, // You can use routerProviders in production
)
final InjectorFactory injector = self.injector$Injector;

// Example of a [root injector](https://angulardart.xyz/guide/dependency-injection#root-injector-providers)
// [popupModule] is used in [MaterialTooltipDirective]
void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
