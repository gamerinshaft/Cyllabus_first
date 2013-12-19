class Company < ActiveRecord::Base
	mount_uploader :logo, LogoUploader
	mount_uploader :cover, CoverUploader
end
