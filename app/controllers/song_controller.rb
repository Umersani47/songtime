class SongController < ApplicationController
  def new
    @song = Song.new
  end
  def create
    @song = Song.new(songs_params)
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
