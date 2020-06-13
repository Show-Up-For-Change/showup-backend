class User < ApplicationRecord
  
  validates :fb, uniqueness: true


end
