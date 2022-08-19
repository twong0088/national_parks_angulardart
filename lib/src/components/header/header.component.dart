import 'package:angular/angular.dart';

@Component(
  selector: 'header',
  templateUrl: 'header.component.html',
)
class Header {
  @Input()
  var state;
}
