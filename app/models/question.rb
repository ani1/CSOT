class Question < ApplicationRecord

  has_many :options
  has_many :tags, through: :tagging
  has_many :taggings, as: :taggable
end
