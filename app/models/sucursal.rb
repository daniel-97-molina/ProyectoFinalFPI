class Sucursal < ApplicationRecord
  has_many :miembros
  has_many :empleados
end
