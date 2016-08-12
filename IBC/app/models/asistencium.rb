class Asistencium < ActiveRecord::Base
	belongs_to :alumno
	belongs_to :profesor
end
