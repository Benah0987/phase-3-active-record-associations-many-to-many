class Review < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
end

game = Game.first
# Create a User instance
user = User.create(name: "Liza")
# Create a review that belongs to a game and a user
review = Review.create(score: 8, game_id: game.id, user_id: user.id)