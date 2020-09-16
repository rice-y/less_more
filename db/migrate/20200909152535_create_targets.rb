class CreateTargets < ActiveRecord::Migration[6.0]
  def change
    create_table :targets do |t|
      t.string  :name
      t.integer :price
      t.text    :text
      t.text    :image
      t.timestamps
    end
  end
end
