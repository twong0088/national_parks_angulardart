import 'park.dart';
import 'dummy_parks.dart';

List<Park> constructPark() {
    List<Park> parksList = [];
    // print(dummyParks["data"]);
    for (var park in dummyParks["data"]) {
        parksList.add(Park(
            park["fullName"],
            park["description"],
            park["url"],
            park["images"][0]["url"],
            park["images"][0]["altText"],
        ));
    }
    return parksList;
}

final mockParksList = constructPark();