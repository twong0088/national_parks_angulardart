import 'package:angular/angular.dart';
import 'src/components/header/header.component.dart';
import 'src/components/table/table.component.dart';
import 'src/components/preview/preview.component.dart';
import 'src/components/search_bar/search_bar.component.dart';
import 'src/park.dart';
import 'src/parks.dart';

@Component(
  selector: 'app-component',
  templateUrl: 'app_component.html',
  styleUrls:['app_component.css'],
  directives: [
    coreDirectives,
    Header,
    Table,
    Preview,
    SearchBar,
  ],
)
class AppComponent {
  String state="CA";
  List<Park> allParks = mockParksList;
  List<Park> filteredParks = mockParksList;
  Park? selectedPark;

  void selectPark(Park? park) {
    selectedPark = park;
  }

  void setSearchTerm(String term) {
    String lowercaseSearchTerm = term.toLowerCase();
    filteredParks = allParks.where(
      (f) => f.name.toLowerCase().startsWith(
        lowercaseSearchTerm
      )
    ).toList();
  }

  void sortAlphabeticalOrder() {
    filteredParks.sort((a, b) => a.name.compareTo(b.name));
  }

  void sortReverseOrder() {
    filteredParks.sort((a, b) => b.name.compareTo(a.name));
  }
}
