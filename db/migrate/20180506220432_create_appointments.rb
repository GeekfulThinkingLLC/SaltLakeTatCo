class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :email
      t.string :img
      t.string :phone
      t.string :tat_location

      t.timestamps
    end
  end
end
