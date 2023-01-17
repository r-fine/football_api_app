import 'package:football_api_app/models/football_model.dart';
import 'package:football_api_app/repositories/scores/football_repository.dart';
import 'package:football_api_app/view_models/football_view_model.dart';

class FootballViewModel {
  FootballModel? footballModel;
  FootballViewModel({this.footballModel});

  get tournament => footballModel?.tournament;
  get matchId => footballModel?.matchId;
  get matchName => footballModel?.matchName;
  get teamA => footballModel?.teamA;
  get teamB => footballModel?.teamB;
  get score => footballModel?.score;
}

class FootballsViewModel {
  final String title = "Football Scores";
  FootballRepository? footballRepository;
  FootballsViewModel({this.footballRepository});

  Future<List<FootballViewModel>> fetchAllData() async {
    List<FootballModel> list = await footballRepository!.getAllScores();
    return list
        .map((score) => FootballViewModel(footballModel: score))
        .toList();
  }
}
