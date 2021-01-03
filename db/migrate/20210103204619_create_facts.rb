class CreateFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :facts do |t|
      t.string :statement
      t.text :additional_info
      t.string :author

      t.timestamps
    end
  end
end
