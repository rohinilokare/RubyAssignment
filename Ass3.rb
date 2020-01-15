class Tournament
  attr_accessor :point_table

  @@point_table = Hash.new
  def accept_record(record)
    array = record.split(';')
    status(array[0],array[1],array[2])
  end

  def status(team1,team2,result)
    if result.chomp.eql? 'win'
      win(team1,team2,result)
    end

    if result.chomp.eql?'draw'
      draw(team1,team2,result)
    end

    if result.chomp.eql? 'loss'
      loss(team1,team2,result)
    end  
    
  end

  def win(team1,team2,result)
    if(@@point_table.key?(team1))
      @@point_table[team1]["MP"]=@@point_table[team1]["MP"] + 1
      @@point_table[team1]["W"]=@@point_table[team1]["W"] + 1
      @@point_table[team1]["P"]=@@point_table[team1]["P"] + 3
    else
      @@point_table[team1]=Hash.new
      @@point_table[team1]["MP"]= 1
      @@point_table[team1]["W"]= 1
      @@point_table[team1]["P"]= 3
      @@point_table[team1]["D"]= 0
      @@point_table[team1]["L"]= 0
    end

    if(@@point_table.key?(team2))
      @@point_table[team2]["MP"] = @@point_table[team1]["MP"] + 1
      @@point_table[team2]["L"] = @@point_table[team1]["L"] + 1
    else
      @@point_table[team2]=Hash.new
      @@point_table[team2]["MP"]= 1
      @@point_table[team2]["L"]= 1
      @@point_table[team2]["W"]= 0
      @@point_table[team2]["D"]= 0
      @@point_table[team2]["P"]= 0
    end
  end

  def draw(team1,team2,result)
    if(@@point_table.key?(team1))
      @@point_table[team1]["MP"]=@@point_table[team1]["MP"] + 1
      @@point_table[team1]["P"]=@@point_table[team1]["P"] + 1
    else
      @@point_table[team1]=Hash.new
      @@point_table[team1]["MP"]= 1
      @@point_table[team1]["W"]= 0
      @@point_table[team1]["P"]= 1
      @@point_table[team1]["D"]= 1
      @@point_table[team1]["L"]= 0
    end
    
    if(@@point_table.key?(team2))
      @@point_table[team2]["MP"]=@@point_table[team2]["MP"] + 1
      @@point_table[team2]["D"]=@@point_table[team2]["D"] + 1
    else
      @@point_table[team2]=Hash.new
      @@point_table[team2]["MP"]= 1
      @@point_table[team2]["L"]= 0
      @@point_table[team2]["W"]= 0
      @@point_table[team2]["D"]= 1
      @@point_table[team2]["P"]= 1
    end

  end

  def loss(team1team2result)
    if(@@point_table.key?(team1))
      @@point_table[team1]["MP"]=@@point_table[team1]["MP"] + 1
      @@point_table[team1]["L"]=@@point_table[team1]["L"] + 1
    else
      @@point_table[team1]=Hash.new
      @@point_table[team1]["MP"]= 1
      @@point_table[team1]["W"]= 0
      @@point_table[team1]["P"]= 0
      @@point_table[team1]["D"]= 0
      @@point_table[team1]["L"]= 1
    end

    if(@@point_table.key?(team2))
      @@point_table[team2]["MP"]=@@point_table[team2]["MP"] + 1
      @@point_table[team2]["W"]=@@point_table[team2]["W"] + 1
      @@point_table[team2]["P"]=@@point_table[team2]["P"] + 3
    else
      @@point_table[team2]=Hash.new
      @@point_table[team2]["MP"]= 1
      @@point_table[team2]["L"]= 0
      @@point_table[team2]["W"]= 1
      @@point_table[team2]["D"]= 0
      @@point_table[team2]["P"]= 3
    end
  end

  def final_table
    puts '-------Point Table----------'
    puts @@point_table
  end

end

t = Tournament.new() 
puts 'how many record do you want to add?'
record_no = gets
record_no = record_no.to_i

while record_no > 0
  puts 'please enter record'
  record = gets
  t.accept_record(record)
  record_no = record_no -1
end

t.final_table



 