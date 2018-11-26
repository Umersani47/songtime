ActiveAdmin.register Song do
  permit_params :song_name, :song_type, :album,:uploader, :singer, :duration, :song_file, :approved,:extension
  index do
    selectable_column
    id_column
    column :song_name
    column :song_type
    column :extension
    column :album
    column :singer
    column :duration
    column 'Song File', sortable: :song_file do |firmware| link_to firmware.song_file, firmware.song_file.url end
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
  filter :extension

  form do |f|
    f.inputs do
      f.input :song_name
      f.input :song_type
      f.input :album
      f.input :singer
      f.input :duration
      f.input :extension
      f.input :song_file
      f.input :approved, value: true
      f.input :uploader, input_html: { value: "Admin" }
    end
    f.actions
  end
end
