import 'package:ngdart/di.dart';

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
