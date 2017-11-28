class CreateEmpleados < ActiveRecord::Migration[5.1]
  def change
    create_table :empleados do |t|
      t.string :codigo
      t.string :nombre
      t.references :sucursal, foreign_key: true
      t.string :contrasena

      t.timestamps
    end
  end
end
