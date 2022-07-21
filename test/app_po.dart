import 'dart:async';
import 'package:ngpageloader/pageloader.dart';

part 'app_po.g.dart';

@PageObject()
abstract class AppPo {
  AppPo();
  factory AppPo.create(PageLoaderElement context) = $AppPo.create;

  @First(ByCss('h2'))
  PageLoaderElement get _title;

  String get title => _title.innerText;
}

