class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
<<<<<<< Updated upstream
      t.string :name
      t.text :text
      t.text :image
=======
      t.string  :name
      t.integer :price
      t.text    :text
      t.date    :deadline
>>>>>>> Stashed changes
      t.timestamps
    end
  end
end
  