class UserMailer < ApplicationMailer
  
  default from: "julian.edelmann@yahoo.de"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'julian.edelmann@yahoo.de',
        :subject => "A new contact form message from #{name}")
  end
  
end
