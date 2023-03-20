class CreateRestrauntPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restraunt_pizzas do |t|
      t.integer :price
      t.integer :pizza_id
      t.integer :restraunt_id
      t.timestamps
    end
  end
end
