import Array "mo:base/Array";

actor Leaderboard {

  type Score = {
    player_name: Text;
    total_score: Nat;
    best_melt_streak: Nat;
  };

  var scores: [Score] = [];

  public func submit_score(score: Score): async Text {
    scores := Array.append(scores, [score]);
    return "Score submitted!";
  };

  public query func get_scores(): async [Score] {
    return scores;
  };
};
