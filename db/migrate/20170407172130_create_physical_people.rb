class CreatePhysicalPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :physical_people do |t|
      t.string :cpf, limit:11
      t.string :sexo, limit:45
      t.date :dtnascimento
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
