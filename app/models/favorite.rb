class Favorite < ApplicationRecord

	belongs_to :music, counter_cache: :favorites_count
    belongs_to :user
end
