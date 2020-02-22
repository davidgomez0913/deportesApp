class Sport < ApplicationRecord
    has_one_attached :image
    has_many :events
end
