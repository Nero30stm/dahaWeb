class Mark < ApplicationRecord
	has_many :products
	mount_uploader :mainPhoto, ImageUploader
	paginates_per 3

	def self.text_search(query)
		if query.present?
		   where("name @@ :q", q: query)
		else
		   all
		end
	end
end
