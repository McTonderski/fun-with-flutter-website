import 'package:fun_with_flutter/blocs/page/page_state.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PageEvent {
  PageEvent();
}

class UpdatePage extends PageEvent {
  UpdatePage(this.page);

  final PageState page;

  @override
  String toString() => 'UpdatePage {page: $page}';
}
