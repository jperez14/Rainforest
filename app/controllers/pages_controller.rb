class PagesController < ApplicationController
	def home
		@products = Product.all
		@newproduct = Product.new
	end
end
