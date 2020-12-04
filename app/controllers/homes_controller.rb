class HomesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @orders = Order.where(user_id: @user.id).includes(:join_order_products, :products)
  end
end
