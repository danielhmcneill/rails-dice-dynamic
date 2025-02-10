class HomeController < ApplicationController
  def home
    render ({ :template => "game_template/home"})

  end
end
