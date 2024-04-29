class CreateOmikujiResults < ActiveRecord::Migration[7.1]
  def change
    create_table :omikuji_results do |t|
      t.string :luck
      t.string :item
      t.string :image

      t.timestamps
    end
  end
end
