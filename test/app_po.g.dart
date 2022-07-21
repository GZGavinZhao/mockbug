// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_po.dart';

// **************************************************************************
// PageObjectGenerator
// **************************************************************************

// ignore_for_file: unused_field, non_constant_identifier_names
// ignore_for_file: overridden_fields, annotate_overrides
// ignore_for_file: prefer_final_locals, deprecated_member_use_from_same_package
class $AppPo extends AppPo with $$AppPo {
  PageLoaderElement $__root__;
  $AppPo.create(PageLoaderElement currentContext) : $__root__ = currentContext {
    $__root__.addCheckers([]);
  }
  factory $AppPo.lookup(PageLoaderSource source) =>
      throw "'lookup' constructor for class "
          "AppPo is not generated and can only be used on Page Object "
          "classes that have @CheckTag annotation.";
  String testCreatorGetters() {
    final getters = <String, String>{};
    getters.addAll(testCreatorGettersInAppPo());
    return json.encode(getters);
  }

  String testCreatorMethods() {
    final methods = <String, List<Map<String, String?>>>{};
    methods.addAll(testCreatorMethodsInAppPo());
    return json.encode(methods);
  }

  dynamic testCreatorInvokeMethod(
      String methodName, List<dynamic> positionalArguments,
      [Map<Symbol, dynamic>? namedArguments]) {
    try {
      return testCreatorInvokeMethodInAppPo(
          methodName, positionalArguments, namedArguments);
    } catch (_) {}

    throw 'METHOD NOT FOUND. This method'
        ' failed to be generated during test creator codegen.';
  }

  String? findChain(List<dynamic> rawInternalIds, [String action = 'default']) {
    final internalIds = rawInternalIds.cast<String>();
    final code = <String, String>{};

    final actionCode = code[action];
    if (actionCode != null) {
      return actionCode;
    }

    final thisElementIndex = internalIds.indexOf($__root__.id);
    final rootNotFound = thisElementIndex < 0;

    if (thisElementIndex >= 0) {
      internalIds.removeRange(thisElementIndex, internalIds.length);
    }

    var closestIndex = internalIds.length;
    String Function(List<String>)? closestValue;
    MapEntry<int, String Function(List<String>)?> chain;
    chain = findChainInAppPo(internalIds, action).entries.first;
    if (chain.key < closestIndex) {
      closestIndex = chain.key;
      closestValue = chain.value;
    }
    if (closestIndex < internalIds.length) {
      final value = closestValue!(internalIds);
      return code[value] ?? value;
    }

    return rootNotFound
        ? null
        : PageObject.defaultCode[action] ?? PageObject.defaultCode['default'];
  }

  static String get tagName =>
      throw '"tagName" is not defined by Page Object "AppPo". Requires @CheckTag annotation in order for "tagName" to be generated.';
  String get title {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPo', 'title');
    }
    final returnMe = super.title;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPo', 'title');
    }
    return returnMe;
  }

  String toStringDeep() => 'AppPo\n\n${$__root__.toStringDeep()}';
}

mixin $$AppPo on AppPo {
  late PageLoaderElement $__root__;
  PageLoaderElement get $root => $__root__;
  Map<String, String> testCreatorGettersInAppPo() {
    return {
      'title': 'String',
    };
  }

  Map<String, List<Map<String, String?>>> testCreatorMethodsInAppPo() {
    return {};
  }

  dynamic testCreatorInvokeMethodInAppPo(
      String methodName, List<dynamic> positionalArguments,
      [Map<Symbol, dynamic>? namedArguments]) {
    if (methodName == 'title') {
      return title;
    }
    throw 'METHOD NOT FOUND. This method'
        ' failed to be generated during test creator codegen.';
  }

  Map<int, String Function(List<String>)?> findChainInAppPo(
      List<String> internalIds,
      [String action = 'default']) {
    var closestIndex = internalIds.length;
    String Function(List<String>)? closestValue;
    try {
      var _titleIndex = internalIds.indexOf(this._title.id);
      if (_titleIndex >= 0 && _titleIndex < closestIndex) {
        closestIndex = _titleIndex;
        closestValue = (_) =>
            '_title.${PageObject.defaultCode[action] ?? PageObject.defaultCode['default']}';
      }
    } catch (_) {
      // Ignored.
    }
    return {closestIndex: closestValue};
  }

  PageLoaderElement get _title {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPo', '_title');
    }
    final element = $__root__.createElement(First(ByCss('h2')), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPo', '_title');
    }
    return returnMe;
  }
}
