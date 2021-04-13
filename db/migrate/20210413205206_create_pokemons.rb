class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :family
      t.boolean :evolution

      t.timestamps
    end
  end
end
