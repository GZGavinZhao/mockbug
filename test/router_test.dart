import 'package:ngdart/di.dart';
import 'package:ngpageloader/html.dart';
import 'package:ngrouter/ngrouter.dart';
import 'package:ngrouter/src/router/router_impl.dart';
import 'package:ngtest/angular_test.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

import 'package:mockbug/app_component.dart';
import 'package:mockbug/app_component.template.dart' as ng;

import 'app_po.dart';

@GenerateMocks(
  [],
  customMocks: [
    MockSpec<RouterImpl>(
      as: #MockRouter,
      returnNullOnMissingStub: true,
      fallbackGenerators: {
        #stream: mockStream,
      },
    ),
  ],
)
import 'router_test.mocks.dart';

import 'router_test.template.dart' as self;

Stream<RouterState> mockStream() {
  return Stream.empty();
}

late NgTestFixture<AppComponent> fixture;
late AppPo po;

@GenerateInjector([
  ValueProvider.forToken(appBaseHref, '/'),
  routerProviders,
  ClassProvider(Router, useClass: MockRouter),
])
final InjectorFactory rootInjector = self.rootInjector$Injector;

void main() {
  final injector = InjectorProbe(rootInjector);
  final testBed = NgTestBed<AppComponent>(
    ng.AppComponentNgFactory,
    rootInjector: injector.factory,
  );

  setUp(() async {
    fixture = await testBed.create();
    final context =
        HtmlPageLoaderElement.createFromElement(fixture.rootElement);
    po = AppPo.create(context);
  });

  test('the default title should be foo', () async {
    expect(po.title, 'Foo');
  });

  test('router is not called', () async {});

  tearDown(disposeAnyRunningTest);
}

class InjectorProbe {
  InjectorFactory _parent;
  Injector? _injector;

  InjectorProbe(this._parent);

  InjectorFactory get factory => _factory;
  Injector? get injector => _injector;

  // Injector _factory([Injector? parent]) => _injector = _parent(parent);
  Injector _factory(Injector parent) => _injector = _parent(parent);
  T get<T>(dynamic token) => injector?.get(token);
}
