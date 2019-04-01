class Item < ApplicationRecord
	mount_uploader :mainPhoto, ImageUploader
	paginates_per 10
end
