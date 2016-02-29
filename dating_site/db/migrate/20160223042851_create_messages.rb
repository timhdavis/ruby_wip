class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.text :body
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
