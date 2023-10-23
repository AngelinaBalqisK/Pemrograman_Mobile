class HttpService {
  final String apiKey = 'isi dengan api key anda';
  final String baseUrl = '';

  Future<String> getPopulationMovies() async {
    final String uri = baseUrl + apikey;

    http.Respone result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok){
      print("Sukses");
      String respone = result.body;
      return respone;
    } else {
      print("Fail");
      return null;
    }
  }
}