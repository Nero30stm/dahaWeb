class OrdersController < ApplicationController
	def create
    @product = Product.find(params[:product_id])
    @order = @product.orders.create(order_params)
    @order.stoim = @product.cost * @order.count
    @order.save
    @product.count -=  @order.count
    @product.save
    redirect_to marks_path
  end
  def index
    @product = Product.find(params[:product_id])
    @order = @product.orders.all
  end

  private

  def order_params
    params.require(:order).permit(:name, :count, :stoim)
  end
end