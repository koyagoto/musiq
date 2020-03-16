class MusicsController < ApplicationController

	def index
		@musics = Music.all
	end

	def new
		@music = Music.new
	end

	def show
		@music = Music.find(params[:id])
        @user = @music.user
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

	def edit
		@music = Music.find(params[:id])
	end

	def update
        @music = Music.find(params[:id])
     if @music.update(music_params)
        redirect_to musics_path
     else
        render 'edit'
     end
    end

    def destroy
       music = Music.find(params[:id])
       music.destroy
       redirect_to musics_path(@music)
    end

	private
    def music_params
        params.require(:music).permit(:singer, :album, :album_image, :introduction, :user_id, :rate, :url)
    end
end
