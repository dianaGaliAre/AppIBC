class Calificacion < ActiveRecord::Base
	belongs_to :alumno
  	belongs_to :materium
end
