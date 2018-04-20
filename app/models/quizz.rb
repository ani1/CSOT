class Quizz < ApplicationRecord

  has_many :candidates, through: :quiz_candidate
  has_many :questions, through: :quiz_question
  has_many :taggings, as: :taggable
end
