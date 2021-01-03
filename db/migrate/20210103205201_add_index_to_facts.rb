class AddIndexToFacts < ActiveRecord::Migration[5.2]
  def change
    add_index :facts, :statement, unique:true
  end
end
