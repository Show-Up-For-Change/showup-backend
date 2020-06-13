class UsersController < ApplicationController

  def create
  end

  def show
    byebug
    User.find_by(fb: user_params)
  end

  private

  def user_params
    # params.permit(:id)
  end

end
