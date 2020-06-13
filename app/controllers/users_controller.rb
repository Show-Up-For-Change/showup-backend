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


# 4 endpoints: /actions, /thoughtleaders, /users/id
# user_actions should have what they've completed or not
# /actions/id (id being user id: should return 3 actions that user has not completed: from user_actions)
# store the user id in the fb field above
# /users/id  (if id not present, create a new record or find the corresponding record;
# return that user's why statement, all of their commitment objects, and all complete actions)
# need user model methods to return all commitments and all completed actions.
