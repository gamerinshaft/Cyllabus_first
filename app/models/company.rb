class Company < ActiveRecord::Base
	mount_uploader :logo, LogoUploader
	mount_uploader :cover, CoverUploader
	geocoded_by :address
	after_validation :geocode
end
