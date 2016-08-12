class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
    	t.string :horario

      t.timestamps null: false
    end
  end
end
