class StaticPagesController < ApplicationController
  def index
  	@products = Product.limit(5)
  end

  def landing_page
  	@products = Product.limit(4)
  end

  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'julian.edelmann@yahoo.de',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
	end

end
