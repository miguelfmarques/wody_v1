class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :nome
      t.string :tipopessoa
      t.string :telefonefixo
      t.string :telefonecelular

      t.timestamps
    end
  end
end
