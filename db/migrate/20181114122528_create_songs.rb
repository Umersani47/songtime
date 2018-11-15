class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :duration
      t.string :singer
      t.string :album
      t.string :uploader
      t.string :song_type
      t.string :song_file
      t.boolean :approved
      t.timestamps
    end
  end
end
