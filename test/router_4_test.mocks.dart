// Mocks generated by Mockito 5.2.0 from annotations
// in mockbug/test/router_4_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:ngrouter/src/directives/router_outlet_directive.dart' as _i6;
import 'package:ngrouter/src/router/navigation_params.dart' as _i5;
import 'package:ngrouter/src/router/router.dart' as _i2;
import 'package:ngrouter/src/router/router_state.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [Router].
///
/// See the documentation for Mockito's code generation for more information.
class MockRouter extends _i1.Mock implements _i2.Router {
  MockRouter() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<String> get onNavigationStart =>
      (super.noSuchMethod(Invocation.getter(#onNavigationStart),
          returnValue: Stream<String>.empty()) as _i3.Stream<String>);
  @override
  _i3.Stream<_i4.RouterState> get onRouteResolved =>
      (super.noSuchMethod(Invocation.getter(#onRouteResolved),
              returnValue: Stream<_i4.RouterState>.empty())
          as _i3.Stream<_i4.RouterState>);
  @override
  _i3.Stream<_i4.RouterState> get onRouteActivated =>
      (super.noSuchMethod(Invocation.getter(#onRouteActivated),
              returnValue: Stream<_i4.RouterState>.empty())
          as _i3.Stream<_i4.RouterState>);
  @override
  _i3.Stream<_i4.RouterState> get stream =>
      (super.noSuchMethod(Invocation.getter(#stream),
              returnValue: Stream<_i4.RouterState>.empty())
          as _i3.Stream<_i4.RouterState>);
  @override
  _i3.Future<_i2.NavigationResult> navigate(String? path,
          [_i5.NavigationParams? navigationParams]) =>
      (super.noSuchMethod(
              Invocation.method(#navigate, [path, navigationParams]),
              returnValue: Future<_i2.NavigationResult>.value(
                  _i2.NavigationResult.SUCCESS))
          as _i3.Future<_i2.NavigationResult>);
  @override
  _i3.Future<_i2.NavigationResult> navigateByUrl(String? url,
          {bool? reload = false, bool? replace = false}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #navigateByUrl, [url], {#reload: reload, #replace: replace}),
              returnValue: Future<_i2.NavigationResult>.value(
                  _i2.NavigationResult.SUCCESS))
          as _i3.Future<_i2.NavigationResult>);
  @override
  void registerRootOutlet(_i6.RouterOutlet? routerOutlet) =>
      super.noSuchMethod(Invocation.method(#registerRootOutlet, [routerOutlet]),
          returnValueForMissingStub: null);
  @override
  void unregisterRootOutlet(_i6.RouterOutlet? routerOutlet) => super
      .noSuchMethod(Invocation.method(#unregisterRootOutlet, [routerOutlet]),
          returnValueForMissingStub: null);
}
