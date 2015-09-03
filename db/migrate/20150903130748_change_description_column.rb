class ChangeDescriptionColumn < ActiveRecord::Migration
  def change
    rename_column(:comments, :description, :comment)
  end
end
