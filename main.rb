require 'pry'
require './player'
require './math_game'

john = Player.new('John')
bob = Player.new('Bob')

# Initialize the game with the players data
my_game = MathGame.new(john.player_content, bob.player_content)

# Show the player names before battle
my_game.players

# Start game
my_game.game_start

