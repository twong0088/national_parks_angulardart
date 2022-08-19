import 'package:angular/angular.dart';
import 'src/components/header/header.component.dart';
import 'src/components/table/table.component.dart';
import 'src/components/preview/preview.component.dart';
import 'src/park.dart';
import 'src/parks.dart';

@Component(
  selector: 'app-component',
  templateUrl: 'app_component.html',
  styleUrls:['app_component.css'],
  directives: [coreDirectives, Header, Table, Preview],
)
class AppComponent {
  String state="CA";
  List<Park> parks = mockParksList;
  Park? selectedPark;

  void selectPark(Park? park) {
    selectedPark = park;
  }
}
