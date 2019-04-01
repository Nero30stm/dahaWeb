class Product < ApplicationRecord
	belongs_to :mark
	belongs_to :type
	has_many :orders
	has_many :reviews
	mount_uploader :mainPhoto, ImageUploader
	def self.search(search)
		if search
			where([":type_id = ?", "%#{search}%"])
		else
			all
		end
	end
end
