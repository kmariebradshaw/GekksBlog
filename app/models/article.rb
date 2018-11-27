class Article < ApplicationRecord
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :fashion, :tech, :staff, :diy, :product


  has_many :comments, dependent: :destroy
  mount_uploader :featured_image, ImageUploader
    validates :title, presence: true
end
