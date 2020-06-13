class ThoughtLeadersController < ApplicationController

  def index
    thought_leaders = ThoughtLeader.all
    render json: thought_leaders
  end
  
end
