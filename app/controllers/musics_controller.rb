class MusicsController < ApplicationController

	def index
		@musics = Music.all
	end

	def new
		@music = Music.new
	end

	def create
	    @music = Music.new(music_params)
	    @music.user_id = current_user.id
	 if @music.save
		redirect_to musics_path
	 else
		render 'new'
	 end
	end

	private
    def music_params
        params.require(:music).permit(:singer, :album, :album_image, :introduction, :user_id, :rate)
    end
end
