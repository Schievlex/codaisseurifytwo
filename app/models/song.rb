class Song < ApplicationRecord

	validates :title, presence: true
  	validates :title, uniqueness: true

  	validates :album, presence: true
  	validates :album, uniqueness: true

  	validates :release_year, presence: true
  	validates :release_year, length: { maximum: 4 }, allow_blank: true

	def self.order_by_name
    order(:title)
  	end

    belongs_to :artist

end
