class CreateMatchRequirements < ActiveRecord::Migration
  def change
    create_table :match_requirements do |t|
      t.string :requirement_type
      t.string :requirement
      t.integer :importance

      t.timestamps null: false
    end
  end
end
