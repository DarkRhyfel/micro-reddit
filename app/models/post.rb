# frozen_string_literal: true

# Post model
class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 10 }
  validates :body, presence: true, length: { maximum: 500 }
end
