import 'package:geolocator/geolocator.dart';
import 'package:latlong/latlong.dart';

class GeoTool {
  //new LatLng(-23.608383, -46.579602), new LatLng(-23.625703, -46.582526)

  static double getDistancia(double startLatitude, double startLongitude,
      double endLatitude, double endLongitude) {
    final Distance distance = new Distance();

    double meter = distance(
      new LatLng(startLatitude, startLongitude),
      new LatLng(endLatitude, endLongitude),
    );

    return meter / 1000;
  }

  static Future<Position> getPosicaoAtual() async {
    return await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  static Future<Position> getUltimaLocalizacao() async {
    return await Geolocator()
        .getLastKnownPosition(desiredAccuracy: LocationAccuracy.high);
  }

  static Future<List<Placemark>> getCoordenadas(
      String rua, int numero, String cidade) async {
    return await Geolocator()
        .placemarkFromAddress(getRuaFomramt(rua, numero, cidade));
  }

  static Future<List<Placemark>> getRua(
      double latitude, double longitude) async {
    return await Geolocator().placemarkFromCoordinates(52.2165157, 6.9437819);
  }

  static Future<GeolocationStatus> getStausPermissaoLocalizacao() async {
    return await Geolocator().checkGeolocationPermissionStatus();
  }

  static String getRuaFomramt(String rua, int numero, String cidade) {
    return rua + " " + numero.toString() + ", " + cidade;
  }
}
