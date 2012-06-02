class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :id
      t.string :name
      t.integer :sale
      t.integer :cost
      t.integer :fees
      t.string :notes

      t.timestamps
    end
  end
end
