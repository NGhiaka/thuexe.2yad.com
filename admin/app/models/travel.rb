class Travel < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	validates_processing_of :image
	validate :image_size_validation
	 
	private
	  def image_size_validation
	    errors[:image] << "Anh phai lon hon 200Kb" if image.size < 0.02.megabytes
	  end
end
