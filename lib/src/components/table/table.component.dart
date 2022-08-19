import 'dart:async';
import 'package:angular/angular.dart';
import '../../park.dart';
import '../card/card.component.dart';

@Component(
  selector: 'table',
  templateUrl: 'table.component.html',
  styleUrls: ['table.component.css'],
  directives: [coreDirectives, Card]
)
class Table {
  @Input()
  var parks;

  @Input()
  var selectedPark;

  final StreamController _selectParkCtrl = StreamController();
  
  @Output("onSelectPark")
  Stream get onSelectPark => _selectParkCtrl.stream;

  void selectPark(Park park) {
    _selectParkCtrl.sink.add(park);
  }
}
