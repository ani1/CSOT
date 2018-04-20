class Candidate < ApplicationRecord

  has_many :quizzs, through: :quiz_candidate
end
