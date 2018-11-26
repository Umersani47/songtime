class HomeController < ApplicationController
  def index
    @songs = Song.where(extension: "mp3")
    @songs1 = Song.where(extension: "mp4")

  end
end
