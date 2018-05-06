class ArtistChangeCalendarName < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.text :name
      t.text :email
      t.string :calendar_id
      t.string :calendar_type

      t.timestamps
    end
  end
end
