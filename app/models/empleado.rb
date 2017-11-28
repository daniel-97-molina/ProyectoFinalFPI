class Empleado < ApplicationRecord
  belongs_to :sucursal
  has_many :pagos
end
