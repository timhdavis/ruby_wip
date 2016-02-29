class CreateFoundMatches < ActiveRecord::Migration
  def change
    create_table :found_matches do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
