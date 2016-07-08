class League

  attr_reader :calculator, :teams

  def initialize(args={})
    @teams = args.fetch(:teams, [])
    @calculator = args.fetch(:calculator) { PointsCalculator.new }
  end

  def standings
    teams.sort {|team1, team2| calculator.points_for_team(team2) <=> calculator.points_for_team(team1)}
  end

  def playoff_teams
    #standings[0...standings.length/2]
    standings.take(standings.length/2)
  end

  def position_for(team)
    standings.each_with_index do |team_object, index|
      if team_object.name == team
        return index+1
      end
    end
  end

end


