class Music < ApplicationRecord

	belongs_to :genre
	belongs_to :user
    attachment :album_image
end
