class ActionsController < ApplicationController

  def index
    actions = Action.all

    render json: actions.sample(3)
  end

  def show
    user = User.find_by(fb: action_params[:id])
    if user
      render json: user.get_incomplete_actions.sample(3)
    else
      render json: {error: "Could not find user!", status: :not_acceptable}
    end
  end

  private

  def action_params
    params.permit(:id)
  end

end
