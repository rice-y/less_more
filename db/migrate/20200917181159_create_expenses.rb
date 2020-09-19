class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|

      t.integer :internet
      t.integer :cell_phone
      t.integer :food
      t.integer :house_rent
      t.integer :gas
      t.integer :water
      t.integer :electric

      t.timestamps
    end
  end
end
