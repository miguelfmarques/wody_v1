class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :nome, limit: 45

      t.references :state

    end
  end
end
