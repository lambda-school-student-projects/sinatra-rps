require 'sinatra'
require 'sinatra/reloader'


get("/") do
  erb(:index)

end

get("/rock") do
  @outcome = game_outcome("rock")
  erb(:rock)

end

get("/paper") do
  @outcome = game_outcome("paper")
  erb(:paper)

end

get("/scissors") do
  @outcome = game_outcome("scissors")
  erb(:scissors)
end

private

def game_outcome(player_choice)
  choices = ["rock", "paper", "scissors"]
  result = ""
  computer_choice = choices[rand(0..2)]
  if computer_choice == player_choice
    result = "tied"
  elsif player_choice == "rock" && computer_choice == "paper"
    result = "lost"
  elsif player_choice == "paper" && computer_choice == "scissors"
    result = "lost"
  elsif player_choice == "scissors" && computer_choice == "rock"
    result = "lost"
  else
    result = "won"
  end
  [player_choice, computer_choice, result]
end
