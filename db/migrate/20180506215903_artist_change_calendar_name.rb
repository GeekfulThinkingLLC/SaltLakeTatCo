class ArtistChangeCalendarName < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.text :name
      t.string :img
      t.text :style
      t.text :description
      t.string :calendar_id
      t.string :calendar_type
      t.string :roles

      t.timestamps
    end
  end
end
