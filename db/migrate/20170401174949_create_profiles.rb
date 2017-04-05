class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :profilename, limit:45
      t.string :profiledesc, limit:45

      t.timestamps
    end
  end
end
