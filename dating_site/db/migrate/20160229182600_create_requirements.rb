class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :requirement_type
      t.string :requirement
      t.integer :importance
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
