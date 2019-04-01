class ReviewsController < ApplicationController
 def index
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews.all
end
def create
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews.create(order_params)
    redirect_to marks_path
  end

def order_params
    params.require(:review).permit(:name, :descr, :rate)
  end
end
