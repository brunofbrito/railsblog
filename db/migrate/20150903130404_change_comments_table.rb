class ChangeCommentsTable < ActiveRecord::Migration
  def change
    rename_column(:comments, :title, :name)
  end
end
