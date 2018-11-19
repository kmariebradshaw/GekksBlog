class Article < ApplicationRecord
  mount_uploader :featured_image, ImageUploader
    validates :title, presence: true
    acts_as_taggable # Alias for acts_as_taggable_on :tags

end
