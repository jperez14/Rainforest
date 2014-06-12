class PagesController < ApplicationController
	def home
		@products = Product.all.order("created_at DESC")
		@newproduct = Product.new
		@review = Review.new
		# @product = Product.find(params[:id])
	end
end
