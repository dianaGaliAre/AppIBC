class CreateCalificacions < ActiveRecord::Migration
  def change
    create_table :calificacions do |t|
    	t.float :calificacion
	    t.references :alumno, index: true, foreign_key: true
        t.references :materium, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
