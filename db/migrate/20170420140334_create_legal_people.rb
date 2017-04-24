class CreateLegalPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :legal_people do |t|
      t.string :cnpj
      t.string :nomefantasia
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
