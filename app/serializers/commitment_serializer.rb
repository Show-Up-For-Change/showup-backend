class CommitmentSerializer < ActiveModel::Serializer
  attributes :id, :user, :type, :amount, :frequency
end
