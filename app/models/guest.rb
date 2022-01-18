class Guest < ApplicationRecord
    has_many :episodes, through: :appearances
end
