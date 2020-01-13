class Tournament
  # Array.new(row){Array.new(col,default_value)} // initialization
   @team = Array.new(4){Array.new(5,0)}
   puts @team
  def status(team1,team2,result)
    if(result=="win")
      @team[team1]["W"]= @team[team1]["W"] + 1
      @team[team1]["MP"] = @team[team1]["MP"] + 1
      @team[team2]["MP"] = @team[team2]["MP"] + 1
      @team[team1]["P"] = @team[team1]["P"] + 3
    elsif(result=="draw")
      @team[team1]["D"]= @team[team1]["D"] + 1
      @team[team2]["D"]= @team[team2]["D"] + 1
      @team[team1]["MP"] = @team[team1]["MP"] + 1
      @team[team2]["MP"] = @team[team2]["MP"] + 1
      @team[team1]["P"] = @team[team1]["P"] + 1
      @team[team2]["P"] = @team[team2]["P"] + 1
    elsif(result=="loss")
      @team[team1]["L"]= @team[team1]["L"] + 1
      @team[team2]["W"]= @team[team2]["W"] + 1
      @team[team1]["MP"] = @team[team1]["MP"] + 1
      @team[team2]["MP"] = @team[team2]["MP"] + 1
      @team[team2]["P"] = @team[team2]["P"] + 3
    end

    return @team
  end
end

t = Tournament.new() 
t.status('Team B','Team C','win')
t.status('Team A','Team D','draw')
t.status('Team A','Team B','win')
t.status('Team D','Team C','loss')
t.status('Team C','Team A','loss')
t.status('Team B','Team D','win')





 