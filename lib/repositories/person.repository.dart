import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;

class PersonRepository {

  final Connectivity _connectivity = Connectivity();

  Future getPerson() async {
    var _result = await (_connectivity.checkConnectivity());
    print("_result: $_result");
    if(_result == ConnectivityResult.none) return null;

    try{
      var _jsonRes = await http.get(Uri.parse("https://rickandmortyapi.com/api/character?page=1"));
      return jsonDecode(_jsonRes.body)['results'];
    }catch(_err){
      return null;
    }
  }
}