import 'package:football_api_app/models/football_model.dart';

abstract class FootballRepository {
  Future<List<FootballModel>> getAllScores();
}
