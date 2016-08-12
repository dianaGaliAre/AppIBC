class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :nombre
      t.string :ap
      t.string :am
      t.string :tel
      t.string :dir
      t.string :dia
      t.string :horario
      t.string :mail
      t.boolean :status
      t.references :curso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
