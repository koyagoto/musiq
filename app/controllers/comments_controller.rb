class CommentsController < ApplicationController

	def create
		music = Music.find(params[:music_id])
	    comment = current_user.comments.new(comment_params)
	    comment.music_id = music.id
	    comment.save
	    redirect_to music_path(music)
	end

	private
	def comment_params
	    params.require(:comment).permit(:user_id,:music_id,:comment)
	end
end
