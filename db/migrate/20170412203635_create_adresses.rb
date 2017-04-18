class CreateAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :adresses do |t|
      t.string :endereco, limit: 45
      t.string :numero, limit: 10
      t.string :complemento, limit: 60
      t.string :bairro, limit: 45
      t.string :cep, limit: 8

      t.references :city
      t.references :person
    end
  end
end
