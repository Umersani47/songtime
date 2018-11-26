class SongController < ApplicationController
  def new
    @song = Song.new
  end
  def create
    @song = Song.new(songs_params)
    if params[:song][:song_name] == ""
      @song.song_name = @song.song_file.current_path.split("/").last.split(".")[0]
      @song.extension = @song.song_file.current_path.split("/").last.split(".")[1]
    end
    if params[:song][:album] == ""
      @song.album = "Unknown"
    end
    if params[:song][:singer] == ""
      @song.singer = "Unknown"
    end
    if @song.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def songs_params
    params.require(:song).permit!
  end
end
