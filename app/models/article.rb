class Article < ApplicationRecord
    # Relationships
    belongs_to :category

    # Scopes
    scope :alphabetical, -> { order(:title) }
    scope :active,      -> { where(active: true) }

    # Validations
    validates_presence_of :title, :content
end
