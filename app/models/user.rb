class User < ApplicationRecord

  validates :fb, uniqueness: true
  has_many :commitments
  has_many :user_actions
  has_many :actions, through: :user_actions

  def completed_actions
    self.actions
  end

  def get_incomplete_actions
    Action.all.select do |action|
      !user_action_ids.include?(action.id)
    end
  end

  def user_action_ids
    self.user_actions.map do |user_action|
      user_action.action_id
    end
  end

end
