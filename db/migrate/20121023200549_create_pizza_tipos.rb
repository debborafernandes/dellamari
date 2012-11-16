class CreatePizzaTipos < ActiveRecord::Migration
  def change
    create_table :pizza_tipos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
