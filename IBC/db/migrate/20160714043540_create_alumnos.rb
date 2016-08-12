class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
    	t.string :nombre_a
    	t.string :app
    	t.string :apm
    	t.string :direccion
    	t.date :fecha_nac
    	t.string :telefono
    	t.string :email
      	t.references :curso, index: true, foreign_key: true
      	t.references :horario, index: true, foreign_key: true
      	t.references :tipopago, index: true, foreign_key: true        
        t.references :instructor, index: true, foreign_key: true        
        t.references :dium, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
