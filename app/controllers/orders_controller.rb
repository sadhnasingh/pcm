class OrdersController < ApplicationController
	def myorder
		OrderMailer.order_created(current_user).deliver_now
    end

end