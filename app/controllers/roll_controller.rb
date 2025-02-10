class RollController < ApplicationController
  def roll
    # Extract number of dice and sides from the URL parameters
    num_dice = params[:num_dice].to_i
    sides = params[:sides].to_i

    # Generate rolls for each die
    @rolls = []
    num_dice.times do
      @rolls << rand(1..sides)
    end

    # Render the template dynamically
    # No need to create separate templates, use a general one
    render({ :template => "game_template/roll" })
  end
end
