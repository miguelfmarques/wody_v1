class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string :valor, limit:8
      t.string :desconto, limit:8
      t.integer :qtdiassemana

      t.timestamps
    end
  end
end
