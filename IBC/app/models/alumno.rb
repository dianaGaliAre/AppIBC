class Alumno < ActiveRecord::Base
	has_many :asistencia
	belongs_to :curso
	belongs_to :profesor
	belongs_to :dium
	has_many :calificacion
	has_many :cuota
end
