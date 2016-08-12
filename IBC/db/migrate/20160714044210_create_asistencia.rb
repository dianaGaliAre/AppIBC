class CreateAsistencia < ActiveRecord::Migration
  def change
    create_table :asistencia do |t|
    	t.boolean :asistencia 
		t.boolean :falta
    	t.boolean :retardo
      	t.date :fecha
    	t.references :alumno, index: true, foreign_key: true
      	t.references :instructor, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
