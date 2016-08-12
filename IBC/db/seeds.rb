# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Curso.create(nombre_curso: "Computación")
Curso.create(nombre_curso: "Belleza")

Materium.create(nombre_materia: "OFFICE")
Materium.create(nombre_materia: "MECANOGRAFIA")
Materium.create(nombre_materia: "PROGRAMACION")
Materium.create(nombre_materia: "DRAW")

Instructor.create(nombre: "Sergio", ap: "Largo", am: "Gómez", tel: "12345878",dir: "Tlaxcala",mail: "sergio@gmail.com", status: true, curso_id: 1)
Instructor.create(nombre: "Diana", ap: "Galindo", am: "Sabe", tel: "12345878",dir: "Barrio",mail: "diana@gmail.com", status: true, curso_id: 1)

Alumno.create(nombre_a: 'Sergio', app: 'Largo', apm: 'Gómez', direccion: 'Tlaxcala 22', fecha_nac: '1991-02-14', telefono:'4181156954',email:'sergio@gmail.com',instructor_id: 1, curso_id: 1)
Alumno.create(nombre_a: 'Mariana', app: 'Hernandez', apm: 'Saucedo', direccion: 'Barrio', fecha_nac: '1990-01-01', telefono:'418123456',email:'mariana@gmail.com',instructor_id: 2, curso_id: 2))
Alumno.create(nombre_a: 'Eduardo', app: 'Rico', apm: 'Patlan', direccion: 'SanMay', fecha_nac: '1989-12-01', telefono:'415213458',email:'lalo@gmail.com',instructor_id: 1, curso_id: 1))
Alumno.create(nombre_a: 'Fernando', app: 'Cruz', apm: 'Pimentel', direccion: 'DF', fecha_nac: '1989-12-01', telefono:'415213987',email:'fenandogmail.com',instructor_id: 2, curso_id: 1))
Alumno.create(nombre_a: 'Diana', app: 'Galindo', apm: 'Sabe', direccion: 'Morera', fecha_nac: '1989-12-01', telefono:'415213654',email:'diana@gmail.com',instructor_id: 1, curso_id: 2))


User.create(nombre: 'admin', password: 'admin', password_confirmation: 'admin' )
User.create(nombre: 'Sergio', password: '1234', password_confirmation: '1234', instructor_id: 1)
User.create(nombre: 'Administrador', password: '1234', password_confirmation: '1234', instructor_id: 3)

Dium.create(dia: "Lunes")
Dium.create(dia: "Martes")
Dium.create(dia: "Miercoles")
Dium.create(dia: "Jueves")
Dium.create(dia: "Viernes")
Dium.create(dia: "Sabado")

