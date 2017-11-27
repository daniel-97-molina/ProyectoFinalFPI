class CreateTipopagos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipopagos do |t|
      t.string :nombre
      t.decimal :monto, precision: 5, scale: 2

      t.timestamps
    end
  end
end
