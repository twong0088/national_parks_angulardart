import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';


@Component(
  selector: 'search_bar',
  templateUrl: 'search_bar.component.html',
  directives: [coreDirectives, formDirectives]
)
class SearchBar {

  final _setSearchTermController = StreamController();
  
  @Output()
  Stream get setSearchTerm => _setSearchTermController.stream;


  void changeSearchTerm(String searchTerm) {
    _setSearchTermController.sink.add(searchTerm);
  }
}
