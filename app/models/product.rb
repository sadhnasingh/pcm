class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :category
	has_many :reports
	
	def self.search(term)
	  if term
	    where('name LIKE ?', "%#{term}%").order('id DESC')
	  else
	    order('id DESC') 
	  end
	end
	
end
