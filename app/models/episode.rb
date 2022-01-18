class Episode < ApplicationRecord
    has_many :guests, through: :appearances
end
