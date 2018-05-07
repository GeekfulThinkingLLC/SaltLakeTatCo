class CreateTattoos < ActiveRecord::Migration[5.1]
  def change
    create_table :tattoos do |t|
      t.string     :title
      t.text       :description
      t.string     :image
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
