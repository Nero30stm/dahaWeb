class Magazine < ApplicationRecord
	geocoded_by :addr
	after_validation :geocode, :if => :addr_changed?
end
