class CreateSnakes < ActiveRecord::Migration[5.2]
  def change
    create_table :snakes do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :owner_email

      t.timestamps
    end
  end
end
