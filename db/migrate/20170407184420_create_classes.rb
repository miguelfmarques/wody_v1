class CreateClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :classes do |t|
      t.references :schedule
      t.references :student
      t.references :class_type, foreign_key: true

      t.timestamps
    end
  end
end
