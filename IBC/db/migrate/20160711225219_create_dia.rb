class CreateDia < ActiveRecord::Migration
  def change
    create_table :dia do |t|
      t.string :dia

      t.timestamps null: false
    end
  end
end
