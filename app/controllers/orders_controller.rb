class OrdersController < ApplicationController
  
  
  def my_orders
    # only orders that belongs to a certain user
    @orders = Order.where(user_id: current_user.id).order(created_at: :desc)
  end
  
  
end
