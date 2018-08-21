class OrderMailer < ApplicationMailer
	def order_created(user)
		@user = user
		mail(to: user.email,
			from: "testing.bittern@gmail.com",
			subjects: "Order created") 
		
	end
end
