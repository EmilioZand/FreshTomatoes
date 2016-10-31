class Movie < ApplicationRecord
  enum genre: [ :action, :comedy, :drama, :fantasy ]

  validates :title, presence: true

  scope :new_releases, -> { where("release_date > ?", 1.month.ago) }

  def self.search(search)
    where("title LIKE ?", "%#{search}%") 
  end
end
