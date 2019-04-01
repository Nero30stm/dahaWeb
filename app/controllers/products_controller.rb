class ProductsController < ApplicationController
	def index

    end
    def show
	  @product = Product.find(params[:id])
	  gon.pr = Product.find(params[:id])
    end
end
