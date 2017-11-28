class CreatePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos do |t|
      t.date :fecha
      t.references :miembro, foreign_key: true
      t.references :empleado, foreign_key: true
      t.references :tipopago, foreign_key: true

      t.timestamps
    end
  end
end
