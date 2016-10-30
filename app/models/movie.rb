class Movie < ApplicationRecord
  validates :title, presence: true

  def self.search(search)
    where("title LIKE ?", "%#{search}%") 
  end
end
