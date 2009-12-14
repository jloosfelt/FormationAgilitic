class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.float :price, :default => 0.0
      t.references :category
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
