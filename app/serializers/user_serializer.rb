class UserSerializer < ActiveModel::Serializer
  attributes :fb, :why, :completed_actions
end
