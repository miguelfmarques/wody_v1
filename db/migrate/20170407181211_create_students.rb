class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :matricula, limit:45
      t.datetime :vencimento
      t.string :situacao, limit:45
      t.references :physical_person, foreign_key: true

      t.timestamps
    end
  end
end
