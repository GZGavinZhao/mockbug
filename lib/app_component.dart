import 'package:mockbug/src/routes.dart';
import 'package:ngdart/angular.dart';
import 'package:ngrouter/ngrouter.dart';

import 'src/route_paths.dart';

// AngularDart info: https://angulardart.xyz
// Components info: https://angulardart.xyz/components
//
// (If the links still point to the old Dart-lang repo, go here:
// https://pub.dev/ngcomponents)

@Component(
	selector: 'my-app',
	templateUrl: 'app_component.html',
	styleUrls: ['app_component.css'],
	directives: [routerDirectives],
	exports: [RoutePaths, Routes],
	styles: ['.active-route {color: #039be5}'],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
