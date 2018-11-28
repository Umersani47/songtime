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
  def search_song_by_word()
    search = params[:data]
    @songs = Song.where('song_name LIKE ?', "#{search}%").where(extension: "mp3")
    @songs1 = Song.where('song_name LIKE ?', "#{search}%").where(extension: "mp4")
  end

  def songs_params
    params.require(:song).permit!
  end
end
