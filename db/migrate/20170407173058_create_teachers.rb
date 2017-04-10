class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :cref, limit:45
      t.string :valorhora, limit:7
      t.references :physical_person, foreign_key: true

      t.timestamps
    end
  end
end
