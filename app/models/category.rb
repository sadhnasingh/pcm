class Category < ApplicationRecord
	has_many :products
    mount_uploader :image, ImageUploader
end
