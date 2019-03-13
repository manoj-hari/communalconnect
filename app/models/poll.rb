class Poll < ApplicationRecord
    has_many :vote_values, dependent: :destroy
    accepts_nested_attributes_for :vote_values, :reject_if => :all_blank, :allow_destroy => true
end
