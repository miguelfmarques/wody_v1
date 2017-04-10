class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :tipopagamento, limit:45
      t.string :valor, limit:8
      t.string :pagamentocol, limit:45
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
