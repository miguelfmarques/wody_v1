class CreateLegalPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :legal_people do |t|
      t.string :CNPJ
      t.string :fantasy_name
      t.references :person

      t.timestamps
    end
  end
end
