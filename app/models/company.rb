class Company < ActiveRecord::Base
	mount_uploader :logo, LogoUploader
	mount_uploader :cover, CoverUploader
	has_many :multiple_choice_questions
	geocoded_by :address
	after_validation :geocode
end
