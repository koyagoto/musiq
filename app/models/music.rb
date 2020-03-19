class Music < ApplicationRecord

	belongs_to :genre
	belongs_to :user
	attachment :album_image
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
        def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
        end
end
