class AddTypeFieldToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :extension, :string
  end
end
