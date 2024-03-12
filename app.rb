require 'sinatra'
require 'sinatra/reloader'


get("/") do
  erb(:index)

end

get("/rock") do
  choices = ["rock", "paper", "scissors"]
  @outcome = ""
  @choice = choices[rand(0..2)]
  if @choice == "rock"
    @outcome = "tie"
  end
  erb(:rock)

end

get("/paper") do
  choices = ["rock", "paper", "scissors"]
  @outcome = ""
  @choice = choices[rand(0..2)]
  if @choice == "paper"
    @outcome = "tie"
  end
  erb(:paper)

end

get("/scissors") do
  choices = ["rock", "paper", "scissors"]
  @outcome = ""
  @choice == choices[rand(0..2)]
  if @choice = "scissors"
    @outcome = "tie"
  end

  erb(:scissors)

end
