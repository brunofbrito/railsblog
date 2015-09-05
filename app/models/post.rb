class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  mount_uploader :featimg, FeatimgUploader
  self.per_page = 5
  def self.search(search)
    where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
  end
end