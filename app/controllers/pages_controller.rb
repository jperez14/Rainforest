class PagesController < ApplicationController
	def home
		@products = Product.all.order("created_at DESC")
		@newproduct = Product.new
	end
end
