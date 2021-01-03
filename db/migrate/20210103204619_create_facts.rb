class CreateFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :facts do |t|
      t.string :statement, null: false
      t.text :additional_info
      t.string :author, null: false

      t.timestamps
    end
  end
end
