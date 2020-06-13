class UsersController < ApplicationController

  def create
  end

  def show
    user = User.find_or_create_by(fb: user_params["id"])
    render json: user, serializer: UserSerializer
  end

  private

  def user_params
    params.permit(:id)
  end

end
