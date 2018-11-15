ActiveAdmin.register Song do
  permit_params :song_name, :song_type, :album,:uploader, :singer, :duration, :song_file, :approved
  index do
    selectable_column
    id_column
    column :song_name
    column :song_type
    column :album
    column :singer
    column :duration
    column :song_file
    column :approved
    column :uploader
    actions
  end

  filter :song_name
  filter :song_type
  filter :album
  filter :singer
  filter :duration
  filter :song_file
  filter :approved

  form do |f|
    f.inputs do
      f.input :song_name
      f.input :song_type
      f.input :album
      f.input :singer
      f.input :duration
      f.input :song_file
      f.input :approved
      f.input :uploader
    end
    f.actions
  end
end
