class CreateTipopagos < ActiveRecord::Migration
  def change
    create_table :tipopagos do |t|
    	t.string :nombre_tp

      t.timestamps null: false
    end
  end
end
