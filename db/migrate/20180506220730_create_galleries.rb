class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.integer :artist_id
      t.string :thumbnail
      t.string :main
      t.text :images, array: true, default: []

      t.timestamps
    end
  end
end