class UserMailer < ApplicationMailer
  
  default from: "julian.edelmann@yahoo.de"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'julian.edelmann@yahoo.de',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
  @appname = "breakfastDelivery"
  mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
  end

  def product_paid(user, product)
    @user = user
    @product = product
    mail(:from => 'julian.edelmann@yahoo.de',
        :to => @user.email,
        :subject => "Thank you for ordering our product, #{@user.name}!")
  end
  
end
