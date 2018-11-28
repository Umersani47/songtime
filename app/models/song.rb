# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  song_name  :string
#  duration   :string
#  singer     :string
#  album      :string
#  uploader   :string
#  song_type  :string
#  song_file  :string
#  approved   :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ApplicationRecord


  mount_uploader :song_file, AvatarUploader

end
