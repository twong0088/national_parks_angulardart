import 'package:angular/angular.dart';

@Component(
  selector: 'card',
  templateUrl: 'card.component.html',
  styleUrls: ['card.component.css'],
  directives: [coreDirectives]
)
class Card {
  @Input()
  var park;

  @Input()
  var selectedPark;
}
