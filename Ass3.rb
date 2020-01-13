class Tournament
  def status(Team1,team2,result)
    if(result=="win")
      team[team1]["W"]= team[team1]["W"] + 1
      team[team1]["MP"] = team[team1]["MP"] + 1
      team[team2]["MP"] = team[team2]["MP"] + 1
      team[team1]["P"] = team[team1]["P"] + 3
    elsif(result=="draw")
      team[team1]["D"]= team[team1]["D"] + 1
      team[team2]["D"]= team[team2]["D"] + 1
      team[team1]["MP"] = team[team1]["MP"] + 1
      team[team2]["MP"] = team[team2]["MP"] + 1
      team[team1]["P"] = team[team1]["P"] + 1
      team[team2]["P"] = team[team2]["P"] + 1
    elsif(result=="loss")
      team[team1]["L"]= team[team1]["L"] + 1
      team[team2]["W"]= team[team1]["W"] + 1
      team[team1]["MP"] = team[team1]["MP"] + 1
      team[team2]["MP"] = team[team2]["MP"] + 1
      team[team2]["P"] = team[team2]["P"] + 3
    end
  end
end

t = Tournament.new() 
t.name(Team B;Team C;win)
t.name(Team A;Team D;draw)
t.name(Team A;Team B;win)
t.name(Team D;Team C;loss)
t.name(Team C;Team A;loss)
t.name(Team B;Team D;win)





 