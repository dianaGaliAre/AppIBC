class CreateCuota < ActiveRecord::Migration
  def change
    create_table :cuota do |t|
    	t.float :cantidad
    	t.date :fecha_pago
    	t.references :alumno, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
