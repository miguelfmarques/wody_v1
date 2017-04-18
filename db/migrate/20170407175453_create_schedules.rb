class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.datetime :date
      t.integer :qtvagas
      t.references :coach, foreign_key: true

      t.timestamps
    end
  end
end
