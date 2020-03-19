class Music < ApplicationRecord

	belongs_to :genre
	belongs_to :user
	has_many :comments, dependent: :destroy
    attachment :album_image
end
