class User < ApplicationRecord

  validates :fb, uniqueness: true
  # has_many :commitments
  has_many :user_actions
  has_many :actions, through: :user_actions

  def completed_actions
    self.actions
  end

end
