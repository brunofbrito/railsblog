class AddBlogSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.timestamps null: false
      t.string :title
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :linkedin
      t.string :youtube
      t.string :github
      t.string :bground
      t.string :logo
    end
  end
end
