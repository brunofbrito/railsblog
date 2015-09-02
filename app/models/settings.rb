class Settings < ActiveRecord::Base
  mount_uploader :bground, BgroundUploader
  mount_uploader :logo, LogoUploader
end
