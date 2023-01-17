import 'package:dio/dio.dart';
import 'package:football_api_app/models/football_model.dart';
import 'package:football_api_app/repositories/scores/football_repository.dart';

class FootballAPI extends FootballRepository {
  @override
  Future<List<FootballModel>> getAllScores() async {
    List<FootballModel> scores = [];
    var response = await Dio()
        .get('https://mocki.io/v1/3b613eec-3061-44bb-844c-f58c217d5063');
    var list = response.data as List;
    scores = list.map((score) => FootballModel.fromJson(score)).toList();
    return scores;
  }
}
