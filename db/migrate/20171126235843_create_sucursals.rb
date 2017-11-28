class CreateSucursals < ActiveRecord::Migration[5.1]
  def change
    create_table :sucursals do |t|
      t.string :ubicacion

      t.timestamps
    end
  end
end
