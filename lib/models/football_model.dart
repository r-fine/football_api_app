class FootballModel {
  String? tournament;
  int? matchId;
  String? matchName;
  String? teamA;
  String? teamB;
  String? score;

  FootballModel({
    this.tournament,
    this.matchId,
    this.matchName,
    this.teamA,
    this.teamB,
    this.score,
  });

  FootballModel.fromJson(Map<String, dynamic> json) {
    tournament = json['Tournament'];
    matchId = json['Match_Id'];
    matchName = json['Match_name'];
    teamA = json['TeamA'];
    teamB = json['TeamB'];
    score = json['Score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Tournament'] = tournament;
    data['Match_Id'] = matchId;
    data['Match_name'] = matchName;
    data['TeamA'] = teamA;
    data['TeamB'] = teamB;
    data['Score'] = score;
    return data;
  }
}
