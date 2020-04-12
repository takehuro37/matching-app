class ProfileImage < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :profile, optional: true
end
