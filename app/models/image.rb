class Image < ActiveRecord::Base

  has_attached_file :image, style:{medium: '100x100>', thumb: '100x100>'}, default_url: '/images/:filename'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end