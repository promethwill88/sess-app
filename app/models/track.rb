class Track < ApplicationRecord
	belongs_to :user, optional: true
end
