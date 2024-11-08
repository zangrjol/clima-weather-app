import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  final String mainUrl;
  final String subUrl;

  Networking({required this.mainUrl, required this.subUrl});

  Future getData(lat, lon, appid) async {
    var url = Uri.https(mainUrl, subUrl, {
      'lat': lat.toString(),
      'lon': lon.toString(),
      'appid': appid,
      'units':
          'metric', // Optional: you can add this to get temperature in Celsius
    });
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);

      return decodedData;
    } else {
      print(response.statusCode);
    }
  }

  Future getCityData(city, appid) async {
    var url = Uri.https(mainUrl, subUrl, {
      'q': city,
      'appid': appid,
      'units':
          'metric', // Optional: you can add this to get temperature in Celsius
    });
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;

      var decodedData = jsonDecode(data);

      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
