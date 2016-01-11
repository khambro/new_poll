class Image < ActiveRecord::Base
  belongs_to :question
  mount_uploader :image_file, ImageFileUploader
  mount_uploader :image_file_two, ImageFileUploader
  mount_uploader :image_file_three, ImageFileUploader
  mount_uploader :image_file_four, ImageFileUploader
end
