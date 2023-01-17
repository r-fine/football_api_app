import 'package:flutter/material.dart';
import 'package:football_api_app/repositories/scores/football_api.dart';
import 'package:football_api_app/view_models/football_view_model.dart';
import 'package:football_api_app/view_models/footballs_view_model.dart';

class ScoresView extends StatelessWidget {
  ScoresView({Key? key}) : super(key: key);

  var footballViewmodel = FootballsViewModel(footballRepository: FootballAPI());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(footballViewmodel.title),
      ),
      body: Center(
        child: FutureBuilder<List<FootballViewModel>>(
          future: footballViewmodel.fetchAllData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              var scores = snapshot.data;
              return ListView.builder(
                itemCount: scores?.length,
                itemBuilder: (context, index) => ListTile(
                  title: Column(
                    children: [
                      Text(scores![index].tournament),
                      Text(scores[index].matchId.toString()),
                      Text(scores[index].matchName),
                      Text(scores[index].teamA),
                      Text(scores[index].teamB),
                      Text(scores[index].score),
                      const Divider()
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
