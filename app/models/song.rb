class Song < ApplicationRecord
  mount_uploader :song_file, SongUploader
end
