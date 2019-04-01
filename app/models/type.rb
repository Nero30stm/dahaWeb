class Type < ApplicationRecord
	has_many :products
	def self.text_search(query)
		if query.present?
		   where("name @@ :q", q: query)
		else
		   all
		end
	end
end
