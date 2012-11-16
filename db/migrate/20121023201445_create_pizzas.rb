class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :nome
      t.integer :tipo
      t.decimal :valor

      t.timestamps
    end
  end
end
