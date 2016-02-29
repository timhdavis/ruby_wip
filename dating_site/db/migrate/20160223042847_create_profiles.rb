class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :about_me
      t.integer :age

      t.timestamps null: false
    end
  end
end
