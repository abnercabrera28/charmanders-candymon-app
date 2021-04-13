class CreateCandies < ActiveRecord::Migration[6.1]
  def change
    create_table :candies do |t|
      t.string :name
      t.string :flavor
      t.string :category
      t.string :texture
      t.decimal :price

      t.timestamps
    end
  end
end
