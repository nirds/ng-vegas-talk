class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.boolean :done
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
  end
end
