class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :family_trees
  has_many :kids
  has_many :photos
end
