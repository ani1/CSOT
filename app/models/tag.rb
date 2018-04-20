class Tag < ApplicationRecord

  has_many :questions, through: :tagging, source: :taggable, source_type: 'Question'
  has_many :quizzs, through: :tagging, source: :taggable, source_type: 'Quizz'
end
