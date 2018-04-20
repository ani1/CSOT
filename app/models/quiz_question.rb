class QuizQuestion < ApplicationRecord

  belongs_to :quizz
  has_many :answers
end
