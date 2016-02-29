class CreateMatchesFounds < ActiveRecord::Migration
  def change
    create_table :matches_founds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
