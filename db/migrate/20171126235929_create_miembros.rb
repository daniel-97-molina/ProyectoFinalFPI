class CreateMiembros < ActiveRecord::Migration[5.1]
  def change
    create_table :miembros do |t|
      t.string :nombre
      t.boolean :masculino
      t.boolean :activo
      t.references :sucursal, foreign_key: true
      t.date :fechaingreso

      t.timestamps
    end
  end
end
