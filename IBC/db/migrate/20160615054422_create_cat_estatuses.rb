class CreateCatEstatuses < ActiveRecord::Migration
  def change
    create_table :cat_estatuses do |t|
    	t.string :estatus

      t.timestamps null: false
    end
  end
end
