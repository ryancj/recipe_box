class Recipe < ActiveRecord::Base

  has_attached_file :image, styles: { medium: "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :image, presence: true
end
