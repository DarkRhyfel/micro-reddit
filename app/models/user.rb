# frozen_string_literal: true

# User model
class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, length: { in: 5..20 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 10 }
end
