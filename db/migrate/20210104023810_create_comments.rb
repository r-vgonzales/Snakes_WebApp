class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :fact, index: true, foreign_key: true, null: false
      t.text :message, null: false;
      t.string :author, null: false;
      t.string :location, null: false;

      t.timestamps
    end
  end
end
