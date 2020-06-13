class ActionsController < ApplicationController

  def index
    actions = Action.all
    
    render json: actions.sample(3)
  end
  
end
