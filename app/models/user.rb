class User < ApplicationRecord
    has_many :votes, dependent: :destroy
    has_many :vote_values, through: :votes
end
