class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :match_options, :type, :requirement_type
  end
end
