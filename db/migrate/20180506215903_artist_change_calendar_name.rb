class ArtistChangeCalendarName < ActiveRecord::Migration[5.1]
  def change
    rename_column :artists, :calendar, :calendar_id
    add_column :artists, :calendar_type, :string
  end
end
