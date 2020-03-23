class Music < ApplicationRecord

	belongs_to :genre
	belongs_to :user
    has_many :favorites, dependent: :destroy
	attachment :album_image
	has_many :comments, dependent: :destroy

    validates :singer, presence: true
    validates :album, presence: true
    validates :rate, presence: true
    validates :url, presence: true
    validates :introduction, presence: true
end
