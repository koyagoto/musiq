class Music < ApplicationRecord

	belongs_to :user
    attachment :album_image
end
