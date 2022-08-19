import 'dart:async';
import 'package:angular/angular.dart';
import '../../park.dart';

@Component(
  selector: 'preview',
  templateUrl: 'preview.component.html',
  styleUrls: ['preview.component.css'],
  directives: [coreDirectives]
)
class Preview {
  @Input()
  var selectedPark;

  final _selectedParkController = StreamController<Park?>();
  @Output()
  Stream<Park?> get selectedParkChange => _selectedParkController.stream;

  void closePanel() {
    _selectedParkController.sink.add(null);
  }
}
