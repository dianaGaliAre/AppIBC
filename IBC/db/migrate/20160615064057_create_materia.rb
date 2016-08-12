class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materia do |t|
      t.string :nombre_materia

      t.timestamps null: false
    end
  end
end
