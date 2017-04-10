class CreateClassTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :class_types do |t|
      t.string :nome, limit:45

      t.timestamps
    end
  end
end
