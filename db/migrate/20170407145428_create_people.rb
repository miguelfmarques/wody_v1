class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :nome, limit: 45
      t.boolean :tipopessoa
      t.string :telfixo, limit: 12
      t.string :telcelular, limit: 12

      t.timestamps
    end
  end
end
