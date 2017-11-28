class Pago < ApplicationRecord
  belongs_to :miembro
  belongs_to :empleado
  belongs_to :tipopago
end
