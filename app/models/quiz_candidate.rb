class QuizCandidate < ApplicationRecord

  belongs_to :quizz
  belongs_to :candidate
  has_many :answers
end
