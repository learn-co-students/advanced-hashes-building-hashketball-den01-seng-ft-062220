require "pry"

def game_hash

  final_result = Hash.new
  top_level = [:home, :away]
  middle_level = [:team_name, :colors, :players]
  bottom_level = [:player_name, :number, :shoe, :points, :rebounds, :assists, :steals, :blocks, :slam_dunks]
  player_hash = Hash.new
  home_players_array = []
  away_players_array = []

  #Home_Team
  home_team_name = "Brooklyn Nets"
  home_team_colors = ["Black", "White"]
  home_player_1 = ["Alan Anderson", 0, 16, 22, 12, 12, 3, 1, 1]
  home_player_2 = ["Reggie Evans", 30, 14, 12, 12, 12, 12, 12, 7]
  home_player_3 = ["Brook Lopez", 11, 17, 17, 19, 10, 3, 1, 15]
  home_player_4 = ["Mason Plumlee", 1, 19, 26, 11, 6, 3, 8, 5]
  home_player_5 = ["Jason Terry", 31, 15, 19, 2, 2, 4, 11, 1]

  #Away_Team
  away_team_name = "Charlotte Hornets"
  away_team_colors = ["Turquoise", "Purple"]
  away_player_1 = ["Jeff Adrien", 4, 18, 10, 1, 1, 2, 7, 2]
  away_player_2 = ["Bismack Biyombo", 0, 16, 12, 4, 7, 22, 15, 10]
  away_player_3 = ["DeSagna Diop", 2, 14, 24, 12, 12, 4, 5, 5]
  away_player_4 = ["Ben Gordon", 8, 15, 33, 3, 2, 1, 1, 0]
  away_player_5 = ["Kemba Walker", 33, 15, 6, 12, 12, 7, 5, 12]

#home players stats
home_player_1_stats = bottom_level.zip(home_player_1).to_h
home_player_2_stats = bottom_level.zip(home_player_2).to_h
home_player_3_stats = bottom_level.zip(home_player_3).to_h
home_player_4_stats = bottom_level.zip(home_player_4).to_h
home_player_5_stats = bottom_level.zip(home_player_5).to_h

home_players_array.push(home_player_1_stats, home_player_2_stats, home_player_3_stats, home_player_4_stats, home_player_5_stats)

#away players stats
away_player_1_stats = bottom_level.zip(away_player_1).to_h
away_player_2_stats = bottom_level.zip(away_player_2).to_h
away_player_3_stats = bottom_level.zip(away_player_3).to_h
away_player_4_stats = bottom_level.zip(away_player_4).to_h
away_player_5_stats = bottom_level.zip(away_player_5).to_h

away_players_array.push(away_player_1_stats, away_player_2_stats, away_player_3_stats, away_player_4_stats, away_player_5_stats)

  top_level.each do |x|
    final_result[x] = {middle_level[0] => "", middle_level[1] => "", middle_level[2] => ""}
  end

#final output should look like
  final_result.each do |k, v|
    if k == :home
      final_result[k][:team_name] = home_team_name
      final_result[k][:colors] = home_team_colors
      final_result[k][:players] = home_players_array
    elsif k == :away
      final_result[k][:team_name] = away_team_name
      final_result[k][:colors] = away_team_colors
      final_result[k][:players] = away_players_array
    end
  end

  final_result
end
