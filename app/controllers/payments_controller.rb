class PaymentsController < ApplicationController
	def create
		@product = params[:product_id]
		@user = current_user
	  token = params[:stripeToken]
	  # Create the charge on Stripe's servers - this will charge the user's card
	  begin
	    charge = Stripe::Charge.create(
	      :amount => @product.price * 100, # amount in cents, again
	      :currency => "eur",
	      :source => token,
	      :description => params[:stripeEmail]
	    )

	   if charge.paid
	   	Order.create (
	   		:product_id => @product.id,
	   		:user_id => @user.id,
	   		:total => @product.price
	   		)
	   	UserMailer.product_paid(@user, @product).deliver_now
	   end

	  rescue Stripe::CardError => e
	    # The card has been declined
	     # The card has been declined
    body = e.json_body
    err = body[:error]
    redirect_to product_path(@product)
    flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
	  end
	end
end