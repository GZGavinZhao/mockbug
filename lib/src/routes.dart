import 'package:ngrouter/ngrouter.dart';

import 'bar_component.template.dart' as bar_template;
import 'foo_component.template.dart' as foo_template;

import 'route_paths.dart';
export 'route_paths.dart';

class Routes {
  static final foo = RouteDefinition(
    routePath: RoutePaths.foo,
    component: foo_template.FooComponentNgFactory,
  );

  static final bar = RouteDefinition(
    routePath: RoutePaths.bar,
    component: bar_template.BarComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    foo,
    bar,
  ];
}
