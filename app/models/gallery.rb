class Gallery < ApplicationRecord
  mount_uploader :images, ImgUploader
  mount_uploader :main, ImgUploader
  mount_uploader :thumbnail, ImgUploader

end
