class Photo < ApplicationRecord
  belongs_to :content
  belongs_to :user

  mount_uploader :picture, PictureUploader
end
