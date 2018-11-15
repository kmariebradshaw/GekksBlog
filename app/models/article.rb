class Article < ApplicationRecord
    validates :title, presence: true
    acts_as_taggable # Alias for acts_as_taggable_on :tags

end
