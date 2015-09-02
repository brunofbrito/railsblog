class AddFeatimgToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :featimg, :string
  end
end
