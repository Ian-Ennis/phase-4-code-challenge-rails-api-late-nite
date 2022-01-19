class Episode < ApplicationRecord
    has_many :appearances, dependent: :destroy
    has_many :guests, through: :appearances
end
