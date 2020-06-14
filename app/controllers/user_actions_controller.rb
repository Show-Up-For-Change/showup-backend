class UserActionsController < ApplicationController

  def create
    user_action = UserAction.create(
      duration: user_action_params[:duration],
      comment: user_action_params[:comment],
      action_id: user_action_params[:action_id],
      user_id: User.find_by(fb: user_action_params[:user_id]).id,
    )

    render json: user_action

  end

  def destroy
    user_action = UserAction.find(user_action_params[:id])
    render json: user_action
    UserAction.delete(user_action_params[:id])
  end

  private

  def user_action_params
    params.permit(:duration, :comment, :action_id, :user_id, :id)
  end
end
