class CreateMatchOptions < ActiveRecord::Migration
  def change
    create_table :match_options do |t|
      t.string :type
      t.string :requirement
      t.integer :importance

      t.timestamps null: false
    end
  end
end
