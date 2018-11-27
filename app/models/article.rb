class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  mount_uploader :featured_image, ImageUploader
    validates :title, presence: true
    acts_as_taggable # Alias for acts_as_taggable_on :tags

end
