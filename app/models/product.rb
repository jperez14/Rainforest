class Product < ActiveRecord::Base
	validates :description,
						:name, 
						presence: true
	validates :price_in_cents, 
						numericality: {only_integer: true, greater_than: 0}

	has_many :reviews

	has_attached_file :photo, 
										:styles => { :medium => "100x100>", :thumb => "100x100>" }, 
										:default_url => "http://i.imgur.com/j7yks4E.png"
  validates_attachment_content_type :photo, 
  									:content_type => /\Aimage\/.*\Z/

	
	def formatted_price
		price_in_dollars = price_in_cents.to_f / 100
		sprintf("%.2f", price_in_dollars)
	end
end
